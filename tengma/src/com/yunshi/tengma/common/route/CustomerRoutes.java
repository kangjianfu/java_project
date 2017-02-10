package com.yunshi.tengma.common.route;

import com.jfinal.config.Routes;
import com.yunshi.tengma.customer.controller.CustomerController;
import com.yunshi.tengma.zs.controller.ZsController;

public class CustomerRoutes extends Routes{

	@Override
	public void config() {
		add("/customer",CustomerController.class);//知识分享
	}

}
