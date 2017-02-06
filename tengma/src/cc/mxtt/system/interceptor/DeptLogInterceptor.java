package cc.mxtt.system.interceptor;

import cc.mxtt.common.core.Constant;
import cc.mxtt.common.utils.DateUtil;
import cc.mxtt.system.model.Dept;
import cc.mxtt.system.model.Log;
import cc.mxtt.system.model.User;
import cc.mxtt.system.service.LogService;
import cc.mxtt.system.service.impl.DeptServiceImpl;
import cc.mxtt.system.service.impl.LogServiceImpl;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.kit.JsonKit;

public class DeptLogInterceptor implements Interceptor{

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
			if(!"/dept/add".equals(inv.getActionKey())){
				String id = inv.getController().getPara("id");
				Dept old_dept = new DeptServiceImpl().findById(id);
				log.set("old_values", JsonKit.toJson(old_dept));
			}
			log.set("new_values", JsonKit.toJson(inv.getController().getParaMap()));
			log.set("operation_time", DateUtil.getOracleDateTime());
			inv.invoke(); //拦截器放行
			logService.create(log);  //控制器操作成功后再写入日志
		}
	}

}
