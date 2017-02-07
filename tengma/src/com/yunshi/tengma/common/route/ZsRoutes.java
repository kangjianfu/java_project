package com.yunshi.tengma.common.route;

import com.jfinal.config.Routes;
import com.yunshi.tengma.zs.controller.ZsController;

public class ZsRoutes extends Routes{

	@Override
	public void config() {
		add("/zs",ZsController.class);//知识分享
	}

}
