package cc.mxtt.system.controller;

import java.util.HashMap;
import java.util.Map;

import com.jfinal.aop.Before;
import com.jfinal.kit.JsonKit;
import com.jfinal.render.JsonRender;

import cc.mxtt.common.core.BaseController;
import cc.mxtt.system.interceptor.RoleLogInterceptor;
import cc.mxtt.system.model.Role;
import cc.mxtt.system.service.RoleService;
import cc.mxtt.system.service.impl.RoleServiceImpl;

public class RoleController extends BaseController{
	RoleService roleService = new RoleServiceImpl();
	
	public void index(){
		render("index.jsp");
	}
	public void list(){
		renderJson(JsonKit.toJson(roleService.getDataGrid()));
	}
	@Before(RoleLogInterceptor.class)
	public void add(){
		Role role = new Role();
		//role.set("id","SEQ_SYS_ROLE.nextval");
		role.set("groupname", getPara("groupname"));
		role.set("name", getPara("name"));
		role.set("description", getPara("description"));
		role.set("order_id", getPara("order_id"));
		Map<String, Boolean> result = new HashMap<String, Boolean>();
		if (roleService.create(role)) {
			result.put("flag", true);
		}else{
			result.put("flag", false);
		}
		render(new JsonRender(result).forIE());
	}
	@Before(RoleLogInterceptor.class)
	public void edit(){
		Role role = roleService.findById(getPara("id"));
		role.set("groupname", getPara("groupname"));
		role.set("name", getPara("name"));
		role.set("description", getPara("description"));
		role.set("order_id", getPara("order_id"));
		Map<String, Boolean> result = new HashMap<String, Boolean>();
		if(roleService.update(role)){
			result.put("flag", true);
		}else{
			result.put("flag", false);
		}
		render(new JsonRender(result).forIE());
	}
	@Before(RoleLogInterceptor.class)
	public void delete(){
		Map<String, Object> result = new HashMap<String, Object>();
		boolean flag = true ;
		String Msg = "";
		String roleid = getPara("id");
		if(roleService.deleteRoleMenuByRoleId(roleid)){
			Msg = "角色与菜单的关联信息删除成功,";
		}
		if(roleService.deleteUserRoleByRoleId(roleid)){
			Msg = Msg + "角色与用户的关联信息删除成功,";
		}
		if(roleService.delete(roleid)){
			Msg = Msg + "角色的基本信息删除成功！";
		}else{
			flag = false;
			Msg = Msg + "角色的基本信息删除失败！";
		}
		result.put("flag", flag);
		result.put("Msg", Msg);
		//renderJson(JsonKit.toJson(result));
		render(new JsonRender(result).forIE());
	}
	public void menuAssign(){
		Map<String, Object> result = new HashMap<String, Object>();
		boolean flag = true;
		String Msg = "";
		String roleid = getPara("roleId");
		String menuids = getPara("menuIds");
		if(roleService.addRoleMenuByRoleIdMenuIds(roleid, menuids)){
			Msg = "为角色分配菜单成功！";
		}else{
			flag = false;
			Msg = "为角色分配菜单失败，请重新分配！";
		}
		result.put("flag", flag);
		result.put("Msg", Msg);
		//renderJson(JsonKit.toJson(result));
		render(new JsonRender(result).forIE());
	}
	public void userAssign(){
		Map<String, Object> result = new HashMap<String, Object>();
		boolean flag = true;
		String Msg = "";
		String roleid = getPara("roleId");
		String userids = getPara("userIds");
		if(roleService.addUserRoleByRoleIdUserIds(roleid, userids)){
			Msg = "为角色分配用户成功！";
		}else{
			flag = false;
			Msg = "为角色分配用户失败,请重新分配!";
		}
		result.put("flag", flag);
		result.put("Msg", Msg);
		//renderJson(JsonKit.toJson(result));
		render(new JsonRender(result).forIE());
	}
	public void listUser() {
		String roleid = getPara(0);
		renderJson(JsonKit.toJson(roleService.getListUserByRoId(roleid)));
	}
}
