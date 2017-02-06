package cc.mxtt.system.service;

import java.util.List;

import cc.mxtt.common.model.MenuBtn;
import cc.mxtt.system.model.Menu;
import cc.mxtt.system.model.TreeGridMenu;
import cc.mxtt.system.model.TreeMenu;

public interface MenuService {
	public Menu findById(String menu_id);
	public boolean create(Menu menu);
	public boolean update(Menu menu);
	public boolean delete(String menu_id);
	//判断该菜单，是否是其他菜单的上级菜单
	public boolean existsMenu(String menu_id);
	//删除菜单ID与角色ID关联关系表中的有关菜单ID的记录
	public void deleteRoleMenuByMenuId(String menu_id);
	//获取菜单树(菜单树列表)
	public List<TreeGridMenu> getTreeGrid(String menu_id);
	//获取菜单树，包含checked字段，标注该菜单是否已分配该角色(角色分配菜单时用)
	public List<TreeMenu> getTree(String role_id, String menu_id);
	//获取登录用户所属角色拥有的一级菜单列表
	public List<Menu> getParentListMenuByRoleId(String roleIds);
	//获取登录用户所属角色一级菜单下的所有菜单
	public List<TreeMenu> getTreeByRoleIdsParentMenuId(String roleIds, String parent_menu_id);
	//获取菜单ID对应的按钮列表
	public List<MenuBtn> getListMenuBtn(String menu_id);
}
