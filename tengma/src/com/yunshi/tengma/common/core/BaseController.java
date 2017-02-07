package com.yunshi.tengma.common.core;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.yunshi.tengma.common.utils.DbUtil;
import com.yunshi.tengma.common.utils.StringUtil;
import com.yunshi.tengma.system.model.Dept;
import com.yunshi.tengma.system.model.User;

/**
 * 用途：controller基类，所有controller必须继承 说明：
 */
public class BaseController extends Controller {

	protected String getControllerKey() {
		return this.getAttr("ControllerKey");
	}
	protected boolean isPost(){		
		return "post".equals(getRequest().getMethod().toLowerCase());
	}
	//获取登录用户信息
	protected User getCurrentUser() {
		return getSessionAttr(Constant.CurrentUser);
	}
	//获取登录用户的部门ID
	protected String getCurrentUserDeptId() {
		User user = getSessionAttr(Constant.CurrentUser);
		return StringUtil.getString(user.get("dept_id"));
	}
	//获取登录用户的上级部门ID
	protected String getCurrentUserDeptParentId() {
		User user = getSessionAttr(Constant.CurrentUser);
		Dept dept =Dept.dao.findFirst("select parent_id from sys_dept where id=?",user.get("dept_id"));
		return StringUtil.getString(dept.get("parent_id"));
	}
	//获取当前登录用户可以操作的部门树
	protected List<Record> getTreeCurrentUserDept() {
		String parentId = getCurrentUserDeptParentId();
		String id="";
		if(parentId.substring(3, 11).equals("00000000")) {
			id = parentId.substring(0,3)+"%";
		} else if(parentId.substring(5, 11).equals("000000")) {
			id = parentId.substring(0,5)+"%";
		} else if(parentId.substring(7, 11).equals("0000")) {
			id = parentId.substring(0,7)+"%";
		} else if(parentId.substring(9, 11).equals("00")) {
			id = parentId.substring(0,9)+"%";
		}
		String sql = "select t.id,t.name,t.fullname,t.parent_id,t.order_id from sys_dept t where t.id like ? order by t.order_id";
		LinkedHashMap<String, String> fieldMap = new LinkedHashMap<String, String>();
		fieldMap.put("id", "id");
		fieldMap.put("name","name");
		fieldMap.put("text","name");
		fieldMap.put("fullname","fullname");
		fieldMap.put("parent_id","parent_id");
		fieldMap.put("order_id","order_id");
		return DbUtil.createTree(Db.find(sql,id), fieldMap, parentId, "id", "parent_id");
	}
	//获取当前登录用户可以操作的用户树
	protected List<Record> getTreeCurrentUser() {
		User user = getSessionAttr(Constant.CurrentUser);
		Dept dept =Dept.dao.findFirst("select parent_id from sys_dept where id=?",user.get("dept_id"));
		String deptParentId = StringUtil.getString(dept.get("parent_id"));
		String id = deptParentId.substring(0,7) + "%"; //区县局
		if(deptParentId.substring(5,11).equals("000000")){
			id = deptParentId.substring(0,5) + "%";  //市州局
		}
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM(");
		sql.append(" SELECT ROWNUM ID,b.nickname NAME,b.username val,b.dept_id parent_id,a.order_id,b.order_id sno FROM sys_dept a,sys_user b");
		sql.append(" WHERE a.id=b.dept_id AND a.id LIKE ?");
		sql.append(" UNION");
		sql.append(" SELECT c.id,c.name,'' val,c.parent_id,c.order_id,0 sno FROM sys_dept c");
		sql.append(" WHERE c.id LIKE ?");
		sql.append(" ) ORDER BY order_id,sno");
		List<Record> list = Db.find(sql.toString(),id,id);
		return DbUtil.createTree(list, deptParentId);
	}
//	//获取当前登录用户可以操作的用户树-----此方法不再使用
//	protected List<Record> getCurrentUserTreeUser() {
//		return getTreeCurrentUser();
//	}
	//获取选项数据字典树
	protected List<Record> getListXxDict(String bm) {
		String sql ="SELECT b.bm,b.mc FROM SYS_XX_DICT A,SYS_XX_DICT_DETAIL B"
			+ " WHERE A.BM=? AND A.ID=B.DICT_ID AND B.QYBZ='Y'"
			+ " ORDER BY B.ORDER_ID";
		return Db.find(sql,bm);
	}
	//获取层级数据字典树
	protected List<Record> getTreeCjDict(String bm) {
		//获取指定编码下的数据字典级
		StringBuffer sql = new StringBuffer();
	    sql.append("SELECT * FROM SYS_CJ_DICT A WHERE A.BM=?");
	    sql.append(" UNION");
		sql.append(" SELECT * FROM SYS_CJ_DICT B WHERE B.PARENT_ID IN (");
	    sql.append(" SELECT ID FROM SYS_CJ_DICT A WHERE A.BM=?");
		sql.append(" ) UNION ");
	    sql.append(" SELECT * FROM SYS_CJ_DICT C WHERE C.PARENT_ID IN (");
		sql.append(" SELECT ID FROM SYS_CJ_DICT B WHERE B.PARENT_ID IN (");
	    sql.append(" SELECT ID FROM SYS_CJ_DICT A WHERE A.BM=?");
		sql.append(" ) ");
	    sql.append(" ) UNION");
		sql.append(" SELECT * FROM SYS_CJ_DICT D WHERE D.PARENT_ID IN (");
	    sql.append(" SELECT ID FROM SYS_CJ_DICT C WHERE C.PARENT_ID IN (");
		sql.append(" SELECT ID FROM SYS_CJ_DICT B WHERE B.PARENT_ID IN (");
	    sql.append(" SELECT ID FROM SYS_CJ_DICT A WHERE A.BM=?");
		sql.append(" )");
	    sql.append(" )");
		sql.append(" )");
		//获取字典根ID
		String rootId = Db.queryBigDecimal("select ID from SYS_CJ_DICT t WHERE t.bm=?",bm).toString();
		//获取要展示的列属性
        LinkedHashMap<String, String> fieldMap = new LinkedHashMap<String, String>();
        fieldMap.put("id", "bm");
        fieldMap.put("text", "mc");
		return DbUtil.createTree(Db.find(sql.toString(),bm,bm,bm,bm),fieldMap,rootId,"id","parent_id");
	}
	//获取参数集Map (当你确定表单获取的参数都为String而非String[]时，可以使用此方法)
	protected Map<String,String> getParaToMap() {
		Map<String,String[]> paraMap = getParaMap();
		Map<String,String>  paraMaps = new HashMap<String,String>();
		Object[] keyNames = paraMap.keySet().toArray();
		for(Object s:keyNames){
			paraMaps.put(s.toString(),paraMap.get(s.toString())[0]);
		}
		return paraMaps;
	}
	protected void goBack() {
		goBack(-1);
	}
	protected void goBack(int step) {
		renderJS("history.go(" + step + ")");
	}
	protected void alertAndGoback(String msg) {
		alertAndGoback(msg,-1);
	}
	protected void alertAndGoback(String msg,int step) {
		renderJS("alert('"+msg+"');history.go(" + step + ")");
	}
	protected void renderJS(String jsContent){
		renderHtml("<script type=\"text/javascript\">"+jsContent+"</script>");
	}
}
