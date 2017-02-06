package cc.mxtt.system.interceptor;

import cc.mxtt.common.core.Constant;
import cc.mxtt.common.utils.DateUtil;
import cc.mxtt.system.model.Log;
import cc.mxtt.system.model.Role;
import cc.mxtt.system.model.User;
import cc.mxtt.system.service.LogService;
import cc.mxtt.system.service.impl.LogServiceImpl;
import cc.mxtt.system.service.impl.RoleServiceImpl;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.kit.JsonKit;

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
