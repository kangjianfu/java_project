package com.yunshi.tengma.system.controller;

import java.util.HashMap;
import java.util.Map;

import com.jfinal.aop.Before;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.StrKit;
import com.jfinal.render.JsonRender;
import com.yunshi.tengma.common.core.BaseController;
import com.yunshi.tengma.common.model.MenuBtn;
import com.yunshi.tengma.system.interceptor.MenuLogInterceptor;
import com.yunshi.tengma.system.model.Menu;
import com.yunshi.tengma.system.service.MenuService;
import com.yunshi.tengma.system.service.impl.MenuServiceImpl;

public class MenuController extends BaseController{
	MenuService menuService = new MenuServiceImpl();
	
	public void index(){
		render("index.jsp");
	}
	
	public void list(){
		renderJson(JsonKit.toJson(menuService.getTreeGrid("0")));
	}
	public void tree(){
		String role_id = getPara(0);
		//顶级菜单的parent_id=0
		renderJson(JsonKit.toJson(menuService.getTree(role_id,"0")));
	}
	@Before(MenuLogInterceptor.class)
	public void add(){
		Menu menu = new Menu();
		//menu.set("id","SEQ_SYS_MENU.nextval");
		menu.set("name", getPara("name"));
		menu.set("description", getPara("description"));
		menu.set("iconCls", getPara("iconCls"));
		menu.set("url", getPara("url"));
		menu.set("parent_id", getPara("parent_id"));
		menu.set("order_id", getPara("order_id"));
		Map<String, Boolean> result = new HashMap<String, Boolean>();
		if (menuService.create(menu)) {
			result.put("flag", true);		
		}else{
			result.put("flag", true);
		}
		//renderJson(JsonKit.toJson(result));
		render(new JsonRender(result).forIE());
	}
	@Before(MenuLogInterceptor.class)
	public void edit(){
		Menu menu = menuService.findById(getPara("id"));
		menu.set("name", getPara("name"));
		menu.set("description", getPara("description"));
		menu.set("iconCls", getPara("iconCls"));
		menu.set("url", getPara("url"));
		menu.set("parent_id", getPara("parent_id"));
		menu.set("order_id", getPara("order_id"));
		Map<String, Boolean> result = new HashMap<String, Boolean>();
		if (menuService.update(menu)){
			result.put("flag", true);		
		}else{
			result.put("flag", true);
		}
		//renderJson(JsonKit.toJson(result));
		render(new JsonRender(result).forIE());
	}
	@Before(MenuLogInterceptor.class)
	public void delete(){
		Map<String, Object> result = new HashMap<String, Object>();
		boolean flag = true;
		String Msg = "";
		if (menuService.existsMenu(getPara("id"))){
			flag = false;
			Msg = "该菜单下有子菜单，不能删除！";
		}else{
			menuService.deleteRoleMenuByMenuId(getPara("id"));
			if (menuService.delete(getPara("id"))){
				Msg = "删除成功！";
			}else{
				flag = false;
				Msg = "删除失败！";
			}
		}
		result.put("flag", flag);
		result.put("Msg", Msg);
		//renderJson(JsonKit.toJson(result));
		render(new JsonRender(result).forIE());
	}
	//更改菜单层级
	public void upparentid(){
		Menu menu = menuService.findById(getPara("menuid"));
		menu.set("parent_id", getPara("parentid"));
		Map<String, Boolean> result = new HashMap<String, Boolean>();
		if (menuService.update(menu)){
			result.put("flag", true);
		}else{
			result.put("flag", false);
		}
		//renderJson(JsonKit.toJson(result));
		render(new JsonRender(result).forIE());
	}
	//根据菜单ID获取按钮列表
	public void listBtn(){
		renderJson(menuService.getListMenuBtn(getPara(0)));
	}
	//添加修改按钮
	public void saveBtn(){
		boolean flag = false;
		String msg = "保存按钮失败！";
		String id = getPara("id","");
		String menu_id = getPara("menu_id");
		String btn_name = getPara("btn_name");
		String btn_icon = getPara("btn_icon");
		String btn_method = getPara("btn_method");
		String order_id = getPara("order_id");
		MenuBtn btn = new MenuBtn();
		btn.set("menu_id",menu_id);
		btn.set("btn_name",btn_name);
		btn.set("btn_icon",btn_icon);
		btn.set("btn_method",btn_method);
		btn.set("order_id",order_id);
		if(StrKit.isBlank(id)){
			if(btn.save()) {
				flag = true;
				msg = "按钮功能添加成功！";
			} else {
				flag = false;
				msg = "按钮功能添加失败！";
			}
		} else {
			btn.set("id",id);
			if(btn.update()) {
				flag = true;
				msg = "按钮功能修改成功！";
			} else {
				flag = false;
				msg = "按钮功能修改失败！";
			}
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("flag", flag);
		result.put("msg", msg);
		render(new JsonRender(result).forIE());
	}
	//删除按钮
	public void deleteBtn() {
		String id = getPara("id");
		Map<String, Object> result = new HashMap<String, Object>();
		if(!"".equals(id)) {
			if(MenuBtn.dao.deleteById(id)) {
				result.put("flag", true);
				result.put("msg", "按钮功能删除成功！");
			} else {
				result.put("flag", false);
				result.put("msg", "按钮功能删除失败！");
			}
			
		} else {
			result.put("flag",false);
			result.put("msg", "必须选择一个按钮才可以进行删除操作！");
		}
		render(new JsonRender(result).forIE());
	}
}
