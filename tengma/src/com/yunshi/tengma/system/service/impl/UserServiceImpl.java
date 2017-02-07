package com.yunshi.tengma.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.yunshi.tengma.system.model.Role;
import com.yunshi.tengma.system.model.User;
import com.yunshi.tengma.system.model.UserRole;
import com.yunshi.tengma.system.service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public User findById(String id) {
		return User.dao.findById(id);
	}
	@Override
	public List<User> findByIds(String userids){
		String[] ids = userids.split(",");
		String params = "";
		List<Object> paramObj = new ArrayList<Object>();
		for (String s:ids) {
			if ("".equals(params)){
				params="?";
				paramObj.add(s);
			}else{
				params=params+",?";
				paramObj.add(s);
			}
		}
		String sql = "select * from sys_user where id in("+params+")";
		return User.dao.find(sql, paramObj.toArray());
	}
	@Override
	public boolean create(User user) {
		return user.save();
	}

	@Override
	public boolean update(User user) {
		return user.update();
	}

	@Override
	public int delete(String idValues) {
		String[] ids = idValues.split(",");
		String params = "";
		List<Object> paramObj = new ArrayList<Object>();
		for (String s:ids) {
			if ("".equals(params)){
				params="?";
				paramObj.add(s);
			}else{
				params=params+",?";
				paramObj.add(s);
			}
		}
		return Db.update("delete from sys_user where id in ("+params+")",paramObj.toArray());
	}

	@Override
	public int deleteUserRoleByUserId(String idValues){
		String[] ids = idValues.split(",");
		String params = "";
		List<Object> paramObj = new ArrayList<Object>();
		for (String s:ids) {
			if ("".equals(params)){
				params="?";
				paramObj.add(s);
			}else{
				params=params+",?";
				paramObj.add(s);
			}
		}
		return Db.update("delete from sys_user_role where user_id in ("+params+")",paramObj.toArray());
	}
	
	@Override
	public boolean addUserRoleByUserIdRoleIds(String userid, String roleids){
		//添加前，先删除该用户已分配的角色
		deleteUserRoleByUserId(userid);
		//遍历数组为用户分配角色
		String[] ids = roleids.split(",");
		for(String roleid:ids){
			UserRole userrole = new UserRole();
			userrole.set("user_id", userid);
			userrole.set("role_id", roleid);
			if(!userrole.save()){
				return false;
			}
		}
		return true;
	}
	@Override
	public List<Role> getListRoleByUserId(String userid, String currentUserName){		
		StringBuffer sql = new StringBuffer();
		sql.append("select a.id,a.name,a.description,IF(ISNULL(b.user_id)=0,true,false) checked");
		sql.append(" from sys_role a");
		sql.append(" LEFT JOIN sys_user_role b ON a.id=b.role_id and user_id=?");
        if(!currentUserName.equals("admin")) {
        	sql.append(" AND A.GROUPNAME='用户组'");
        }
        sql.append(" ORDER BY A.ORDER_ID");
		return Role.dao.find(sql.toString(), userid);
	}
	@Override
	public Page<User> getDataGrid(int pageNumber, int pageSize,String qx_dept, String dept_id, String username) {
		String select = "select a.id,a.username,a.nickname,a.zuoji,a.shouji,a.duanhao,a.dept_id,a.bmzyfzr,IF(a.bmzyfzr='Y','是','否') bmzyfzrmc,a.ryzt_dm,c.mc ryztmc,a.qtbz_dm,d.mc qtbzmc,a.tysjq,a.tysjz,a.order_id,b.name dept_name";
        List<Object> paramObj = new ArrayList<Object>();
        StringBuffer formwhere = new StringBuffer();
		formwhere.append("from sys_user a,sys_dept b,v_sys_xx_dict c,v_sys_xx_dict d") ;
		formwhere.append(" where a.dept_id=b.id and c.dlbm='RYZT' and a.ryzt_dm=c.bm and d.dlbm='QTBZ' and a.qtbz_dm=d.bm") ;
		if(StrKit.notBlank(qx_dept)) {
			if(qx_dept.substring(3, 11).equals("00000000")) {
				qx_dept = qx_dept.substring(0,3)+"%";
			} else if(qx_dept.substring(5, 11).equals("000000")) {
				qx_dept = qx_dept.substring(0,5)+"%";
			} else if(qx_dept.substring(7, 11).equals("0000")) {
				qx_dept = qx_dept.substring(0,7)+"%";
			} else if(qx_dept.substring(9, 11).equals("00")) {
				qx_dept = qx_dept.substring(0,9)+"%";
			}
			formwhere.append(" and a.dept_id like ?");
			paramObj.add(qx_dept);
		}
		if(StrKit.notBlank(dept_id)) {
			if(dept_id.substring(3, 11).equals("00000000")) {
				dept_id = dept_id.substring(0,3)+"%";
			} else if(dept_id.substring(5, 11).equals("000000")) {
				dept_id = dept_id.substring(0,5)+"%";
			} else if(dept_id.substring(7, 11).equals("0000")) {
				dept_id = dept_id.substring(0,7)+"%";
			} else if(dept_id.substring(9, 11).equals("00")) {
				dept_id = dept_id.substring(0,9)+"%";
			}
			formwhere.append(" and a.dept_id like ?");
			paramObj.add(dept_id);
		}
		if(StrKit.notBlank(username)) {
			username = "%"+username+"%";
			formwhere.append(" and (a.username like ? or a.nickname like ?)");
		    paramObj.add(username);
		    paramObj.add(username);
		}
		formwhere.append(" order by a.dept_id,a.order_id");
		return User.dao.paginate(pageNumber, pageSize, select, formwhere.toString(),paramObj.toArray());
	}
	
	@Override
	public Page<User> getTongXunLu(int pageNumber, int pageSize, String username1, String username2) {
		String select = "SELECT r.name dept_name,t.username,t.nickname,t.zuoji,t.duanhao,t.shouji"
				+ "t.status,if(t.password='e10adc3949ba59abbe56e057f20f883e','请及时修改默认登录密码','登录密码安全') mima";
		String formwhere = "FROM sys_user t,sys_dept r WHERE t.dept_id=r.id"
	            + " and (t.username like '%"+username1+"%' or t.nickname like '%"+username1+"%' or t.username like '%"+username2+"%' or t.nickname like '%"+username2+"%')"
		        + " ORDER BY r.order_id,t.order_id";
		return User.dao.paginate(pageNumber, pageSize, select, formwhere);
	}

}
