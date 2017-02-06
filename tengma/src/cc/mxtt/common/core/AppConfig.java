package cc.mxtt.common.core;

import cc.mxtt.common.interceptor.LoginInterceptor;
import cc.mxtt.common.model._MappingKit;
import cc.mxtt.common.route.SystemRoutes;
import cc.mxtt.common.route.ZsRoutes;
import cc.mxtt.system.model.Dept;
import cc.mxtt.system.model.Log;
import cc.mxtt.system.model.Menu;
import cc.mxtt.system.model.Role;
import cc.mxtt.system.model.RoleMenu;
import cc.mxtt.system.model.User;
import cc.mxtt.system.model.UserRole;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

public class AppConfig extends JFinalConfig{

	/**
	 * 配置常量
	 */
	public void configConstant(Constants me) {
		PropKit.use("config.properties");				// 加载少量必要配置，随后可用PropKit.get(...)获取值
		me.setDevMode(PropKit.getBoolean("devMode", false));
		//me.setBaseUploadPath("upload"); //设置上传文件保存的基础路径
		me.setBaseViewPath("/WEB-INF/view");
		me.setViewType(ViewType.JSP); 							// 设置视图类型为Jsp，否则默认为FreeMarker
		me.setError500View("/error/500.html");
		me.setError403View("/error/403.html");
		me.setError404View("/error/404.html");
		me.setError401View("/error/401.html");
	}
	
	/**
	 * 配置路由
	 */
	public void configRoute(Routes me) {
		me.add(new SystemRoutes());	//系统管理
		me.add(new ZsRoutes());//知识分享
	}
	
	public static C3p0Plugin createC3p0Plugin() {
		return new C3p0Plugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password").trim());
	}
	
	/**
	 * 配置插件
	 */
	public void configPlugin(Plugins me) {
		// 配置C3p0数据库连接池插件
		C3p0Plugin c3p0Plugin = createC3p0Plugin();
		me.add(c3p0Plugin);
		
		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
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
	}
	
	/**
	 * 配置全局拦截器
	 */
	public void configInterceptor(Interceptors me) {
		//添加控制层全局拦截器
		me.addGlobalActionInterceptor(new LoginInterceptor());
		// 添加事物，对save、update和delete自动进行拦截
		//me.add(new TxByMethods("save", "update", "delete","deleteBatch","updateBatch"));
	}
	
	/**
	 * 配置处理器
	 */
	public void configHandler(Handlers me) {
		//me.add(new FakeStaticHandler(".do"));  //   http://localhost:8080/jfinal_pkm/user/login.do
	}

	/**
	 * 建议使用 JFinal 手册推荐的方式启动项目
	 * 运行此 main 方法可以启动项目，此main方法可以放置在任意的Class类定义中，不一定要放于此
	 */
	public static void main(String[] args) {
		JFinal.start("WebRoot", 80, "/", 5);
	}
}
