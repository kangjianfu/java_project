package cc.mxtt.system.controller;

import java.util.HashMap;
import java.util.Map;

import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;
import com.jfinal.render.JsonRender;

import cc.mxtt.common.core.Constant;
import cc.mxtt.common.utils.DateUtil;
import cc.mxtt.common.utils.MD5Util;
import cc.mxtt.system.interceptor.LoginLogInterceptor;
import cc.mxtt.system.model.User;
import cc.mxtt.system.model.UserRole;
import cc.mxtt.system.service.MenuService;
import cc.mxtt.system.service.UserService;
import cc.mxtt.system.service.impl.MenuServiceImpl;
import cc.mxtt.system.service.impl.UserServiceImpl;

public class IndexController extends Controller{
	MenuService menuService = new MenuServiceImpl();
	UserService userService = new UserServiceImpl();
	/*
	 * 系统登陆首页 system/login
	 *
	*/
	@Clear
	public void index() {
		redirect("/login");
	}
	
	@Clear
	public void download(String fileName) {
		renderFile(fileName);
	}
	
	@Clear
	public void login(){
		if("error".equals(getPara(0))){
			setAttr("errorMsg","用户名或密码错误！");
		}
		render("login.jsp");
	}
	
	@Clear
	@Before(LoginLogInterceptor.class)
	public void checklogin() {
		User loginUser = getModel(User.class);
		String username = loginUser.getStr("username");
		String password = MD5Util.md5(loginUser.getStr("password"));
		User user = User.dao.findLoginUser(username, password);
		System.out.println(password);
		if (user != null) {
			setSessionAttr(Constant.CurrentUser,user);
			redirect("/main");
		} else {
			redirect("/login/error");
		}
	}
	
	@Clear
	public void loginAgain(){
		//登录超时，重新登录
		if("error".equals(getPara(0))){
			setAttr("errorMsg","用户名或密码错误！");
		}
		setAttr("request_url",getPara("request_url"));
		render("login_again.jsp");
	}
	
	@Clear
	public void reChecklogin() {
		User loginUser = getModel(User.class);
		String username = loginUser.getStr("username");
		String password = MD5Util.md5(loginUser.getStr("password"));
		String request_url = getPara("request_url");
		User user = User.dao.findLoginUser(username, password);
		System.out.println(password);
		if (user != null) {
			setSessionAttr(Constant.CurrentUser,user);
			redirect(request_url);
		} else {
			redirect("/login/error");
		}
	}
	
	//注销登陆
	public void logout(){
		removeSessionAttr(Constant.CurrentUser);
		redirect("/");
	}	
	//修改密码
	public void pwdUp() {
		boolean flag = true;
		String errorMsg = "";
		User user = User.dao.findById(getPara("main_user_mmxg_id"));
		String oldPassword = MD5Util.md5(getPara("main_user_mmxg_oldPassword"));
		String newPassword = MD5Util.md5(getPara("main_user_mmxg_newPassword"));
		if(user.get("password").equals(oldPassword)){
			user.set("password", newPassword);
			if (!user.update()){
				flag = false;
				errorMsg = "密码修改失败！";
			}
		}else{
			flag = false;
			errorMsg = "原密码输入不正确！";
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("flag", flag);
		result.put("errorMsg", errorMsg);
		//renderJson(JsonKit.toJson(result));
		render(new JsonRender(result).forIE());
	}
	//修改个人信息
	public void Information() {
		boolean flag = true;
		String errorMsg = "";
		User user = User.dao.findById(getPara("main_user_info_id"));
		String xb_dm = getPara("main_user_info_xb_dm");
		String sfzjhm = getPara("main_user_info_sfzjhm");
		String csrq = getPara("main_user_info_csrq");
		String zuoji = getPara("main_user_info_zuoji");
		String shouji = getPara("main_user_info_shouji");
		String duanhao = getPara("main_user_info_duanhao");
		user.set("xb_dm", xb_dm);
		user.set("sfzjhm", sfzjhm);
		user.set("csrq", DateUtil.getOracleDate(csrq));
		user.set("zuoji", zuoji);
		user.set("shouji", shouji);
		user.set("duanhao", duanhao);
		if (!user.update()){
			flag = false;
			errorMsg = "个人信息修改失败！";
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("flag", flag);
		result.put("errorMsg", errorMsg);
		render(new JsonRender(result).forIE());
	}
	public void main() {
		User CurrentUser = getSessionAttr(Constant.CurrentUser);
		String roleIds = UserRole.dao.getRoleIdsByUserId(CurrentUser.get("id").toString());
		setAttr("CurrentUser",CurrentUser);
		//获取一级菜单
		setAttr("parentListMenu",menuService.getParentListMenuByRoleId(roleIds));
		render("main.jsp");
	}
	
	public void tree(){
		User CurrentUser = getSessionAttr(Constant.CurrentUser);
		String roleIds = UserRole.dao.getRoleIdsByUserId(CurrentUser.get("id").toString());
		String parent_menu_id = getPara(0);
		//获取一级菜单ID下的所有菜单
		renderJson(JsonKit.toJson(menuService.getTreeByRoleIdsParentMenuId(roleIds,parent_menu_id)));
	}
}
