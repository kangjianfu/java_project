package com.yunshi.tengma.common.core;

import com.alibaba.druid.filter.stat.StatFilter;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.yunshi.tengma.common.interceptor.LoginInterceptor;
import com.yunshi.tengma.common.model._MappingKit;
import com.yunshi.tengma.common.route.SystemRoutes;
import com.yunshi.tengma.common.route.ZsRoutes;
import com.yunshi.tengma.plugin.DemoPlugin;
import com.yunshi.tengma.system.model.Dept;
import com.yunshi.tengma.system.model.Log;
import com.yunshi.tengma.system.model.Menu;
import com.yunshi.tengma.system.model.Role;
import com.yunshi.tengma.system.model.RoleMenu;
import com.yunshi.tengma.system.model.User;
import com.yunshi.tengma.system.model.UserRole;

public class MainConfig extends JFinalConfig {

	/**
	 * 配置常量
	 */
	@Override
	public void configConstant(Constants me) {
		//加载配置文件
		// loadPropertyFile("config.properties");
		// TODO Auto-generated method stub
		PropKit.use("config.properties");				// 加载少量必要配置，随后可用PropKit.get(...)获取值
		me.setDevMode(PropKit.getBoolean("devMode", false));
		//me.setBaseUploadPath("upload"); //设置上传文件保存的基础路径
		me.setBaseViewPath("/WEB-INF/view"); //配置整个项目 view 层的根目录
		me.setViewType(ViewType.JSP); 							// 设置视图类型为Jsp，否则默认为FreeMarker
		me.setError500View("/error/500.html");
		me.setError403View("/error/403.html");
		me.setError404View("/error/404.html");
		me.setError401View("/error/401.html");
		//me.setUrlParaSeparator("~");//配置参数分隔符
		//默认创建一个upload 目录
		//me.setBaseUploadPath("upload");
	}
	/**
	 * 配置路由
	 */
	@Override
	public void configRoute(Routes me) {
		me.add(new SystemRoutes());	//系统管理
		me.add(new ZsRoutes());//知识分享

	}

	/**
	 * 配置插件
	 */
	@Override
	public void configPlugin(Plugins me) {
		DruidPlugin druid = new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user").trim(), PropKit.get("password").trim());
		//druid.set(10, 10, 20);
		druid.addFilter(new StatFilter());
		me.add(druid);
		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(druid);
		me.add(arp);
		arp.addMapping("sys_user","id", User.class);	// 映射sys_user 表到 User模型
		arp.addMapping("sys_role","id", Role.class);	// 映射sys_role 表到 Role模型
		arp.addMapping("sys_menu","id", Menu.class);	// 映射sys_menu 表到 Menu模型
		arp.addMapping("sys_dept","id", Dept.class);	// 映射sys_dept 表到 Dept模型
		arp.addMapping("sys_user_role","id", UserRole.class);	// 映射sys_user_role 表到 UserRole模型
		arp.addMapping("sys_role_menu","id", RoleMenu.class);	// 映射sys_role_menu 表到 RoleMenu模型
		arp.addMapping("sys_log", "id",Log.class); //日志
		// 权限系统相关表以外的所有配置在_MappingKit中通过_JFinalGenerator自动生成
		_MappingKit.mapping(arp);
		
		me.add(new DemoPlugin());
		
		

	}

	@Override
	public void configInterceptor(Interceptors me) {
		me.addGlobalActionInterceptor(new LoginInterceptor());

	}

	@Override
	public void configHandler(Handlers me) {
		//伪静态的 默认为后缀是.html
		//me.add(new FakeStaticHandler());
		//me.add(new FakeStaticHandler(".abc"));
	}

}
