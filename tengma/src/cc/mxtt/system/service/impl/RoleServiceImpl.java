package cc.mxtt.system.service.impl;

import java.util.List;

import com.jfinal.plugin.activerecord.Db;

import cc.mxtt.system.model.Role;
import cc.mxtt.system.model.RoleMenu;
import cc.mxtt.system.model.User;
import cc.mxtt.system.model.UserRole;
import cc.mxtt.system.service.RoleService;

public class RoleServiceImpl implements RoleService {
	@Override
	public Role findById(String id) {
		return Role.dao.findById(id);
	}

	@Override
	public boolean create(Role role) {
		return role.save();
	}

	@Override
	public boolean update(Role role) {
		return role.update();
	}

	@Override
	public boolean delete(String id) {
		return Role.dao.deleteById(id);
	}

	@Override
	public boolean deleteRoleMenuByRoleId(String roleid) {
		String sql = "delete from sys_role_menu where role_id=?";
		if(Db.update(sql, roleid)>0){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean deleteUserRoleByRoleId(String roleid) {
		String sql = "delete from sys_user_role where role_id=?";
		if(Db.update(sql, roleid)>0){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean addRoleMenuByRoleIdMenuIds(String roleid,String menuids) {
		//添加前，先删除该角色已分配的菜单
		deleteRoleMenuByRoleId(roleid);
		//遍历数组为角色分配菜单
		String[] ids = menuids.split(",");
		for(String menuid:ids){
			RoleMenu rolemenu = new RoleMenu();
			rolemenu.set("role_id", roleid);
			rolemenu.set("menu_id", menuid);
			if(!rolemenu.save()){
				return false;
			}
		}
		return true;
	}
	
	@Override
	public boolean addUserRoleByRoleIdUserIds(String roleid,String userids) {
		//添加前，先删除该角色已分配的用户
		deleteUserRoleByRoleId(roleid);
		//遍历数组为角色分配用户
		String[] ids = userids.split(",");
		for(String userid:ids){
			UserRole userrole = new UserRole();
			userrole.set("role_id", roleid);
			userrole.set("user_id", userid);
			if(!userrole.save()){
				return false;
			}
		}
		return true;
	}
	
	@Override
	public List<User> getListUserByRoId(String roleid) {
		String sql = "select a.id,a.username,a.nickname,b.name dept_name,IF(ISNULL(c.role_id)=0,true,false) checked";
		sql = sql + " from sys_user a";
		sql = sql + " LEFT JOIN sys_dept b ON a.dept_id=b.id";
		sql = sql + " LEFT JOIN sys_user_role c ON a.id=c.user_id and role_id=?";
		sql = sql + " order by a.dept_id desc";
		return User.dao.find(sql, roleid);
	}
	
	@Override
	public List<Role> getDataGrid() {
		String sql = "select id,name,groupname,description,order_id from sys_role order by groupname desc,order_id";
		return Role.dao.find(sql);
	}

}
