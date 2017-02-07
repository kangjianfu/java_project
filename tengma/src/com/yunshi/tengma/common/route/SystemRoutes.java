package com.yunshi.tengma.common.route;

import com.jfinal.config.Routes;
import com.yunshi.tengma.system.controller.CjSjzdController;
import com.yunshi.tengma.system.controller.CoreController;
import com.yunshi.tengma.system.controller.DeptController;
import com.yunshi.tengma.system.controller.IndexController;
import com.yunshi.tengma.system.controller.LogController;
import com.yunshi.tengma.system.controller.MenuController;
import com.yunshi.tengma.system.controller.RoleController;
import com.yunshi.tengma.system.controller.UserController;
import com.yunshi.tengma.system.controller.XxSjzdController;

public class SystemRoutes extends Routes{

	@Override
	public void config() {
		add("/", IndexController.class, "/system");	// 第三个参数为该Controller的视图存放路径	
		add("/core", CoreController.class); //核心控制器，将系统常用的控制器调用方法写在这里
		add("/system/user",UserController.class); 
		add("/system/dept",DeptController.class);
		add("/system/menu",MenuController.class);
		add("/system/role",RoleController.class);
		add("/system/log",LogController.class);
		add("/system/xxsjzd",XxSjzdController.class);//选项数据字典
		add("/system/cjsjzd",CjSjzdController.class);//层级数据字典
	}

}
