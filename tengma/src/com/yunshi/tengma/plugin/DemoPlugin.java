package com.yunshi.tengma.plugin;

import com.jfinal.plugin.IPlugin;

public class DemoPlugin  implements IPlugin{

	@Override
	public boolean start() {
		// TODO Auto-generated method stub
		System.err.println("插件  启动");
		return true;
	}

	@Override
	public boolean stop() {
		// TODO Auto-generated method stub
		System.err.println("插件  停止");
		return true;
	}

}
