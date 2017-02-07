package com.yunshi.tengma.system.service;

import java.util.List;

import com.yunshi.tengma.system.model.Role;
import com.yunshi.tengma.system.model.User;

public interface RoleService {
	public Role findById(String id);
	public boolean create(Role role);
	public boolean update(Role role);
	public boolean delete(String id);
	//删除角色ID与菜单ID关联关系表中的有关角色ID的记录
	public boolean deleteRoleMenuByRoleId(String roleid);
	//删除角色ID与用户ID关联关系表中的有关角色ID的记录
	public boolean deleteUserRoleByRoleId(String roleid);
	
	//为角色分配菜单
	public boolean addRoleMenuByRoleIdMenuIds(String roleid,String menuids);
	//为角色分配用户
	public boolean addUserRoleByRoleIdUserIds(String roleid,String userids);
	//为角色分配用户时使用的用户列表，增加checked字段标注该角色拥有的用户
	public List<User> getListUserByRoId(String roleid);
	public List<Role> getDataGrid();
}
