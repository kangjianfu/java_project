package cc.mxtt.system.service.impl;

import java.util.LinkedHashMap;
import java.util.List;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

import cc.mxtt.common.model.CjDict;
import cc.mxtt.common.utils.DbUtil;
import cc.mxtt.system.service.CjSjzdService;

/**
 *@author 饶诗伟
 *@date 2016年4月22日 下午3:44:02
 *@description 
 */
public class CjSjzdServiceImpl implements CjSjzdService {

	@Override
	public List<Record> getListCjDict() {
		String sql = "select id,bm,mc,parent_id,order_id,qybz,if(qybz='Y','启用','禁用') qybzmc,xgbz,if(xgbz='Y','允许修改','禁止修改') xgbzmc from SYS_CJ_DICT t ORDER BY parent_id,order_id";
		//获取要展示的列属性
        LinkedHashMap<String, String> fieldMap = new LinkedHashMap<String, String>();
        fieldMap.put("id", "id");
        fieldMap.put("bm", "bm");
        fieldMap.put("mc", "mc");
        fieldMap.put("parent_id", "parent_id");
        fieldMap.put("order_id", "order_id");
        fieldMap.put("qybz", "qybz");
        fieldMap.put("qybzmc", "qybzmc");
        fieldMap.put("xgbz", "xgbz");
        fieldMap.put("xgbzmc", "xgbzmc");
		return DbUtil.createTree(Db.find(sql),fieldMap, "1", "id","parent_id");
	}
	
	@Override
	public List<Record> getListCjDict(String bm) {
	    //获取指定编码下的数据字典级
		StringBuffer sql = new StringBuffer();
	    sql.append("select id,bm,mc,parent_id,order_id,qybz,if(qybz='Y','启用','禁用') qybzmc,xgbz,if(xgbz='Y','允许修改','禁止修改') xgbzmc FROM SYS_CJ_DICT A WHERE A.BM=?");
	    sql.append(" UNION");
		sql.append(" select id,bm,mc,parent_id,order_id,qybz,if(qybz='Y','启用','禁用') qybzmc,xgbz,if(xgbz='Y','允许修改','禁止修改') xgbzmc FROM SYS_CJ_DICT B WHERE B.PARENT_ID IN (");
	    sql.append(" SELECT ID FROM SYS_CJ_DICT A WHERE A.BM=?");
		sql.append(" ) UNION ");
	    sql.append(" select id,bm,mc,parent_id,order_id,qybz,if(qybz='Y','启用','禁用') qybzmc,xgbz,if(xgbz='Y','允许修改','禁止修改') xgbzmc FROM SYS_CJ_DICT C WHERE C.PARENT_ID IN (");
		sql.append(" SELECT ID FROM SYS_CJ_DICT B WHERE B.PARENT_ID IN (");
	    sql.append(" SELECT ID FROM SYS_CJ_DICT A WHERE A.BM=?");
		sql.append(" ) ");
	    sql.append(" ) UNION");
		sql.append(" select id,bm,mc,parent_id,order_id,qybz,if(qybz='Y','启用','禁用') qybzmc,xgbz,if(xgbz='Y','允许修改','禁止修改') xgbzmc FROM SYS_CJ_DICT D WHERE D.PARENT_ID IN (");
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
		    fieldMap.put("id", "id");
		    fieldMap.put("bm", "bm");
		    fieldMap.put("mc", "mc");
		    fieldMap.put("parent_id", "parent_id");
		    fieldMap.put("order_id", "order_id");
		    fieldMap.put("qybz", "qybz");
		    fieldMap.put("qybzmc", "qybzmc");
		    fieldMap.put("xgbz", "xgbz");
		    fieldMap.put("xgbzmc", "xgbzmc");
		return DbUtil.createTree(Db.find(sql.toString(),bm,bm,bm,bm),fieldMap,rootId,"id","parent_id");
	}

	@Override
	public Boolean deleteCjsjzd(String id) {
		//要删除的字典有明细字典将不能删除
		CjDict dict = CjDict.dao.findFirst("select 1 from sys_cj_dict where parent_id=?", id);
		if(dict==null) {
			return CjDict.dao.deleteById(id);
		} else {
			return false;
		}
	}

}
