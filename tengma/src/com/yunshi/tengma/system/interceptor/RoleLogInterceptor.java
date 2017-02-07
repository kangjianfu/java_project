package com.yunshi.tengma.system.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.kit.JsonKit;
import com.yunshi.tengma.common.core.Constant;
import com.yunshi.tengma.common.utils.DateUtil;
import com.yunshi.tengma.system.model.Log;
import com.yunshi.tengma.system.model.Role;
import com.yunshi.tengma.system.model.User;
import com.yunshi.tengma.system.service.LogService;
import com.yunshi.tengma.system.service.impl.LogServiceImpl;
import com.yunshi.tengma.system.service.impl.RoleServiceImpl;

public class RoleLogInterceptor implements Interceptor{

	@Override
	public void intercept(Invocation inv) {
		User user = inv.getController().getSessionAttr(Constant.CurrentUser);
		if (user==null) {
			inv.getController().redirect("/");
		}else{
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
			if(!"/role/add".equals(inv.getActionKey())){
				String id = inv.getController().getPara("id");
				Role old_role = new RoleServiceImpl().findById(id);
				log.set("old_values", JsonKit.toJson(old_role));
			}
			log.set("new_values", JsonKit.toJson(inv.getController().getParaMap()));
			log.set("operation_time", DateUtil.getOracleDateTime());
			inv.invoke(); //拦截器放行
			logService.create(log);  //控制器操作成功后再写入日志
		}
	}

}
