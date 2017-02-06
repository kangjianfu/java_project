package cc.mxtt.system.model;

import java.util.ArrayList;
import java.util.List;

import cc.mxtt.common.utils.StringUtil;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class Menu extends Model<Menu> {
	
	public static final Menu dao = new Menu();
	List<TreeGridMenu> children = new ArrayList<TreeGridMenu>();
	
	public List<TreeGridMenu> getChildren() {
		return children;
	}

	public void setChildren(List<TreeGridMenu> children) {
		this.children = children;
	}
	
	//菜单树(menu.getAttrs()方法只能写在Model里，所以没写在Service里)
	public List<Menu> getChildrenTreeGrid(String parent_id){
		String sql = "select id,name,description,iconCls,url,parent_id,order_id from sys_menu where parent_id=? order by order_id";
		return Menu.dao.find(sql,parent_id);
	}
	public List<TreeGridMenu> getTreeGrid(List<Menu> parentList){
		List<TreeGridMenu> listTreeGridMenu = new ArrayList<TreeGridMenu>();
		for(Menu menu:parentList){
			TreeGridMenu treeGridMenu = new TreeGridMenu();
			treeGridMenu.setId(StringUtil.getString(menu.getAttrs().get("id")));
			treeGridMenu.setName(StringUtil.getString(menu.getAttrs().get("name")));
			treeGridMenu.setUrl(StringUtil.getString(menu.getAttrs().get("url")));
			treeGridMenu.setIconCls(StringUtil.getString(menu.getAttrs().get("iconCls")));
			treeGridMenu.setParent_id(StringUtil.getString(menu.getAttrs().get("parent_id")));
			treeGridMenu.setOrder_id(StringUtil.getString(menu.getAttrs().get("order_id")));
			treeGridMenu.setDescription(StringUtil.getString(menu.getAttrs().get("description")));
			treeGridMenu.setChildren(getTreeGrid(getChildrenTreeGrid(menu.getAttrs().get("id").toString())));
			listTreeGridMenu.add(treeGridMenu);
		}
		return listTreeGridMenu;
	}
	//菜单树(登陆用户的导航菜单)
	public List<Menu> getChildrenTreeByRoleIds(String roleIds, String parent_menu_id){
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
		paramObj.add(parent_menu_id);
		String sql = "select distinct a.* from (";
		sql = sql + " select t.id,t.name text,t.iconCls,t.url,IF(ISNULL(r.role_id)=0,'true','false') checked,t.parent_id,t.order_id";
		sql = sql + " from sys_menu t";
		sql = sql + " INNER JOIN sys_role_menu r ON t.id=r.menu_id and r.role_id in ("+params+")) a";
		sql = sql + " where a.parent_id=? order by a.order_id";
		return Menu.dao.find(sql,paramObj.toArray());
	}
	//菜单树(角色分配菜单)
	public List<Menu> getChildrenTree(String role_id, String parent_menu_id){
		String sql = "select distinct * from (";
		sql = sql + " select t.id,t.name text,t.iconCls,t.url,IF(ISNULL(r.role_id)=0,'true','false') checked,t.parent_id,t.order_id";
		sql = sql + " from sys_menu t";
		sql = sql + " LEFT JOIN sys_role_menu r ON t.id=r.menu_id and r.role_id in ("+role_id+")) a";
		sql = sql + " where a.parent_id=? order by a.order_id";
		return Menu.dao.find(sql,parent_menu_id);
	}
	public List<TreeMenu> getTree(String role_id, List<Menu> parentList){
		List<TreeMenu> listTreeMenu = new ArrayList<TreeMenu>();
		for(Menu menu:parentList){
			TreeMenu treeMenu = new TreeMenu();
			treeMenu.setId(StringUtil.getString(menu.getAttrs().get("id")));
			treeMenu.setText(StringUtil.getString(menu.getAttrs().get("text")));
			treeMenu.setUrl(StringUtil.getString(menu.getAttrs().get("url")));
			treeMenu.setIconCls(StringUtil.getString(menu.getAttrs().get("iconCls")));
			if(StringUtil.getString(menu.getAttrs().get("checked")).equals("true")){
				treeMenu.setChecked(true);
			}else{
				treeMenu.setChecked(false);
			}
			treeMenu.setChildren(getTree(role_id,getChildrenTree(role_id, StringUtil.getString(menu.getAttrs().get("id")))));
			listTreeMenu.add(treeMenu);
		}
		return listTreeMenu;
	}
}
