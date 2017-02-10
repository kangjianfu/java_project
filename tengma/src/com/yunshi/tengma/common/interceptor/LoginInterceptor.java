package com.yunshi.tengma.common.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.yunshi.tengma.common.core.Constant;
import com.yunshi.tengma.common.utils.DateUtil;
import com.yunshi.tengma.system.model.Log;
import com.yunshi.tengma.system.model.User;
import com.yunshi.tengma.system.service.LogService;
import com.yunshi.tengma.system.service.impl.LogServiceImpl;

/**
 * 用户登录的全局拦截器
 */
public class LoginInterceptor implements Interceptor {

	public void intercept(Invocation inv) {
		String controllerKey = inv.getControllerKey();
		if(controllerKey.equals("api")){
			inv.invoke();//不对 api 的访问进行拦截
		}else{
			//判断当前用户是不是为空
			User user = inv.getController().getSessionAttr(Constant.CurrentUser);
			if (user==null) {
				inv.getController().redirect("/system/login");
			} else {
				inv.invoke(); //拦截器放行
				if("/logout".equals(inv.getActionKey())){
				LogService logService = new LogServiceImpl();
				Log log = new Log();
				log.set("username", user.getStr("username"));
				log.set("nickname", user.getStr("nickname"));
				if("0:0:0:0:0:0:0:1".equals(inv.getController().getRequest().getRemoteAddr().toString())){
					log.set("ip_address", "127.0.0.1");
				}else{
					log.set("ip_address", inv.getController().getRequest().getRemoteAddr());
				}
				log.set("request_name", logService.getMethodName(inv.getActionKey()));
				log.set("request_url", inv.getActionKey());
				log.set("url_para", inv.getController().getPara());
				log.set("operation_time", DateUtil.getOracleDateTime());
				logService.create(log);  //将退出登陆信息写入日志
				}
			}
			
		}
		
		/*System.out.println("username:"+JsonKit.toJson(user.getStr("username")));
		System.out.println("客户端请求地址:"+inv.getControllerKey());
		System.out.println("客户端请求地址:"+inv.getActionKey());
		System.out.println("虚拟目录:"+inv.getController().getRequest().getContextPath());
		System.out.println("服务器IP地址:"+inv.getController().getRequest().getLocalAddr());
		System.out.println("客户端IP地址:"+inv.getController().getRequest().getRemoteAddr());
		System.out.println("UrlPara:"+inv.getController().getPara());
		System.out.println("获取指定的GET/POST参数:"+inv.getController().getPara("page"));
		System.out.println("Parameter:"+JsonKit.toJson(inv.getController().getParaMap()));
		System.out.println("Parameter:"+JsonKit.toJson(inv.getController().getRequest().getQueryString()));*/
	    
	}

}
