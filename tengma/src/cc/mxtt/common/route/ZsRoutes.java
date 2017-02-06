package cc.mxtt.common.route;

import com.jfinal.config.Routes;

import cc.mxtt.zs.controller.ZsController;

public class ZsRoutes extends Routes{

	@Override
	public void config() {
		add("/zs",ZsController.class);//知识分享
	}

}
