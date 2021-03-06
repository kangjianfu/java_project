package com.yunshi.tengma.system.service.impl;

import com.jfinal.plugin.activerecord.Page;
import com.yunshi.tengma.system.model.Log;
import com.yunshi.tengma.system.service.LogService;

public class LogServiceImpl implements LogService {

	@Override
	public boolean create(Log log) {
		return log.save();
	}
	@Override
	public Page<Log> getListLog(int pageNumber, int pageSize, 
			String username, String nickname, String request_name, String date_q, String date_z) {
		String select = "select *";
		String formwhere = "from sys_log where username like '%"+username+"%'";
		formwhere = formwhere + " and nickname like '%"+nickname+"%'";
		formwhere = formwhere + " and request_name like '%"+request_name+"%'";
		if(!"".equals(date_q) && !"".equals(date_z)){
		formwhere = formwhere + " and DATE_FORMAT(operation_time,'%Y-%m-%d') BETWEEN '"+date_q+"' and '"+date_z+"'";
		}
		formwhere = formwhere + " order by operation_time desc";
		return Log.dao.paginate(pageNumber, pageSize, select, formwhere);
	}
	@Override
	public String getMethodName(String requestUrl){
		if ("/checklogin".equals(requestUrl)){
			return "用户登录";
		}
		if ("/logout".equals(requestUrl)){
			return "退出登录";
		}
		if ("/system/user/add".equals(requestUrl)){
			return "用户添加";
		}
		if ("/system/user/edit".equals(requestUrl)){
			return "用户修改";
		}
		if ("/system/user/delete".equals(requestUrl)){
			return "用户删除";
		}
		if ("/system/role/add".equals(requestUrl)){
			return "角色添加";
		}
		if ("/system/role/edit".equals(requestUrl)){
			return "角色修改";
		}
		if ("/system/role/delete".equals(requestUrl)){
			return "角色删除";
		}
		if ("/system/menu/add".equals(requestUrl)){
			return "菜单添加";
		}
		if ("/system/menu/edit".equals(requestUrl)){
			return "菜单修改";
		}
		if ("/system/menu/delete".equals(requestUrl)){
			return "菜单删除";
		}
		if ("/system/dept/add".equals(requestUrl)){
			return "部门添加";
		}
		if ("/system/dept/edit".equals(requestUrl)){
			return "部门修改";
		}
		if ("/system/dept/delete".equals(requestUrl)){
			return "部门删除";
		}
		//return "中文名称未定义,请在LogServiceImpl中定义";
		return requestUrl;
	}


}
