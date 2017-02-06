package cc.mxtt.common.route;

import com.jfinal.config.Routes;

import cc.mxtt.system.controller.CjSjzdController;
import cc.mxtt.system.controller.CoreController;
import cc.mxtt.system.controller.DeptController;
import cc.mxtt.system.controller.IndexController;
import cc.mxtt.system.controller.LogController;
import cc.mxtt.system.controller.MenuController;
import cc.mxtt.system.controller.RoleController;
import cc.mxtt.system.controller.UserController;
import cc.mxtt.system.controller.XxSjzdController;

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
