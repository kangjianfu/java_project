package com.yunshi.tengma.system.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import com.jfinal.aop.Clear;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.render.JsonRender;
import com.yunshi.tengma.common.core.BaseController;
import com.yunshi.tengma.common.utils.DateUtil;
import com.yunshi.tengma.common.utils.MD5Util;
import com.yunshi.tengma.system.model.User;
import com.yunshi.tengma.system.service.UserService;
import com.yunshi.tengma.system.service.impl.UserServiceImpl;

public class UserController extends BaseController{
	UserService userService = new UserServiceImpl();
	//用户列表首页
	public void index(){
		render("index.jsp");
	}
	//用户列表
	public void list() {
		int pageNumber = getParaToInt("page",1);
		int pageSize = getParaToInt("rows",10);
		String qx_dept = getCurrentUserDeptParentId(); //登录用户只能管理本局的用户
		String dept_id = getPara("s_dept_id",""); //搜索条件，如果没有则为空
		String username = getPara("s_username",""); //搜索条件，如果没有则为空
		Page<User> listuser = userService.getDataGrid(pageNumber, pageSize, qx_dept, dept_id, username);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("total", listuser.getTotalRow());
		result.put("rows", listuser.getList());
		renderJson(JsonKit.toJson(result));
	}
	@Clear
	public void txl(){
		render("txl.jsp");
	}
	@Clear
	public void tongxunlu(){
		int pageNumber = getParaToInt("page",1);
		int pageSize = getParaToInt("rows",20);
		String username = getPara(0,""); //搜索条件，如果没有则为空
		String username1 ="";
		String username2 ="";
		try {
			username1 = URLDecoder.decode(username, "UTF-8");
			username2 = URLDecoder.decode(username, "GBK");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Page<User> listuser = userService.getTongXunLu(pageNumber, pageSize, username1,username2);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("total", listuser.getTotalRow());
		result.put("rows", listuser.getList());
		//renderJson(JsonKit.toJson(result));
		render(new JsonRender(result).forIE());
	}
	public void save() {
		boolean flag = false;
		String msg ="";
		User user = new User();
		user.set("nickname", getPara("nickname"));
		user.set("zuoji", getPara("zuoji"));
		user.set("shouji", getPara("shouji"));
		user.set("duanhao", getPara("duanhao"));
		user.set("dept_id",	getPara("dept_id"));
		user.set("bmzyfzr", getPara("bmzyfzr"));
		user.set("ryzt_dm", getPara("ryzt_dm"));
		user.set("order_id", getPara("order_id"));
		if(StrKit.isBlank(getPara("id"))) {
			//user.set("id", "SEQ_SYS_USER.nextval");
			user.set("username", getPara("username"));
			user.set("qtbz_dm", "Y");
			user.set("password", MD5Util.md5("123456"));//添加用户时，赋予默认密码为123456
			if(user.save()) {
				flag = true;
				msg = "用户信息保存成功！";
			} else {
				flag = false;
				msg = "用户信息保存失败！";
			}
		} else {
			user.set("id", getPara("id"));
			if(user.update()) {
				flag = true;
				msg = "用户信息修改成功！";
			} else {
				flag = false;
				msg = "用户信息修改失败！";
			}
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("flag", flag);
		result.put("msg", msg);
		render(new JsonRender(result).forIE());
	}
	//账号的"启用/停用"
	public void saveQt() {
		boolean flag = false;
		String msg ="";
		User user = new User();
		user.set("id", getPara("id"));
		user.set("qtbz_dm", getPara("qtbz_dm"));
		if(getPara("qtbz_dm").equals("N")) {
			user.set("tysjq", DateUtil.getOracleDate(getPara("tysjq")));
			user.set("tysjz", DateUtil.getOracleDate(getPara("tysjz")));
		}else{
			user.set("tysjq", null);
			user.set("tysjz", null);
		}
		if(user.update()) {
			flag = true;
			msg = "用户信息修改成功！";
		} else {
			flag = false;
			msg = "用户信息修改失败！";
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("flag", flag);
		result.put("msg", msg);
		render(new JsonRender(result).forIE());
	}
	public void delete() {
		Map<String, Object> result = new HashMap<String, Object>();
		boolean flag = true;
		String msg = "";
		String delIds = getPara("id");
		if(userService.deleteUserRoleByUserId(delIds)>0) {
			msg = "用户与角色的关联信息删除成功,";
		}
		if (userService.delete(delIds)>0) {
			msg = msg + "用户的基本信息删除成功！";
		} else {
			flag = false;
			msg = msg + "用户的基本信息删除失败！";
		}
		result.put("flag", flag);
		result.put("msg", msg);
		render(new JsonRender(result).forIE());
	}
	//重置密码
	public void resetpassword(){
		Map<String, Object> result = new HashMap<String, Object>();
		boolean flag = true;
		String msg = "";
		User user = userService.findById(getPara("id"));
		user.set("password", MD5Util.md5("123456"));
		if(userService.update(user)){
			msg = "用户密码已重置为：123456。";
		}else{
			flag = false;
			msg = "用户密码重置失败！";
		}
		result.put("flag", flag);
		result.put("msg", msg);
		render(new JsonRender(result).forIE());
	}
	public void roleAssign(){
		Map<String, Object> result = new HashMap<String, Object>();
		boolean flag = true;
		String Msg = "";
		String userid = getPara("userId");
		String roleids = getPara("roleIds");
		if(userService.addUserRoleByUserIdRoleIds(userid, roleids)){
			Msg = "为用户分配角色成功!";
		}else{
			flag = false;
			Msg = "为用户分配角色失败，请重新分配！";
		}
		result.put("flag", flag);
		result.put("Msg", Msg);
		render(new JsonRender(result).forIE());
	}
	public void listRole(){
		String userid = getPara(0);
		String currentUserName = this.getCurrentUser().get("username");
		renderJson(JsonKit.toJson(userService.getListRoleByUserId(userid, currentUserName)));
	}
}
