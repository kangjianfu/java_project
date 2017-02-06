package cc.mxtt.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.plugin.activerecord.Db;

import cc.mxtt.common.model.MenuBtn;
import cc.mxtt.system.model.Menu;
import cc.mxtt.system.model.TreeGridMenu;
import cc.mxtt.system.model.TreeMenu;
import cc.mxtt.system.service.MenuService;

public class MenuServiceImpl implements MenuService {

	@Override
	public Menu findById(String menu_id) {
		return Menu.dao.findById(menu_id);
	}

	@Override
	public boolean create(Menu menu) {
		return menu.save();
	}

	@Override
	public boolean update(Menu menu) {
		return menu.update();
	}

	@Override
	public boolean delete(String menu_id) {
		return Menu.dao.deleteById(menu_id);
	}

	@Override
	public boolean existsMenu(String menu_id) {
		String sql = "select * from sys_menu where parent_id=?";
		Menu menu = Menu.dao.findFirst(sql, menu_id);
		if (menu==null){
			return false;
		}
		return true;
	}

	@Override
	public void deleteRoleMenuByMenuId(String menu_id) {
		Db.update("delete from sys_role_menu where menu_id=?",menu_id);
	}

	@Override
	public List<TreeGridMenu> getTreeGrid(String menu_id) {
		return Menu.dao.getTreeGrid(Menu.dao.getChildrenTreeGrid(menu_id));
	}

	@Override
	public List<TreeMenu> getTree(String role_id,String menu_id) {
		return Menu.dao.getTree(role_id, Menu.dao.getChildrenTree(role_id,menu_id));
	}
	
	@Override
	public List<Menu> getParentListMenuByRoleId(String roleIds){
		String[] ids = roleIds.split(",");
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
		//System.out.println(params);
		//System.out.println(paramObj.toArray());
		String sql = "select DISTINCT s.id,s.name,s.iconCls,s.order_id";
		sql = sql + " from sys_role_menu t,sys_menu r,sys_menu s where t.role_id in ("+params+")";
		sql = sql + " and t.menu_id=r.id and r.parent_id=s.id and s.parent_id=1";
		sql = sql + " order by s.order_id";
		return Menu.dao.find(sql, paramObj.toArray());
	}

	@Override
	public List<TreeMenu> getTreeByRoleIdsParentMenuId(String roleIds,
			String parent_menu_id) {
		return Menu.dao.getTree(roleIds, Menu.dao.getChildrenTreeByRoleIds(roleIds, parent_menu_id));
	}

	@Override
	public List<MenuBtn> getListMenuBtn(String menu_id) {
		String sql ="select id,menu_id,btn_name,btn_icon,btn_method,order_id from sys_menu_btn "
				+ " where menu_id=?"
				+ " order by order_id";
		return MenuBtn.dao.find(sql, menu_id);
	}
}
