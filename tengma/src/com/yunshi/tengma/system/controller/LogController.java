package com.yunshi.tengma.system.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.jfinal.kit.JsonKit;
import com.jfinal.plugin.activerecord.Page;
import com.yunshi.tengma.common.core.BaseController;
import com.yunshi.tengma.common.utils.DateUtil;
import com.yunshi.tengma.system.model.Log;
import com.yunshi.tengma.system.service.LogService;
import com.yunshi.tengma.system.service.impl.LogServiceImpl;

public class LogController extends BaseController{
	LogService logService = new LogServiceImpl();
	public void index(){
		render("index.jsp");
	}
	public void list(){
		int pageNumber = getParaToInt("page",1);
		int pageSize = getParaToInt("rows",10);
		String username = getPara("username","");
		String nickname = getPara("nickname","");
		String request_name = getPara("request_name","");
		String date_q = getPara("date_q",DateUtil.getDate(new Date()));
		String date_z = getPara("date_z",DateUtil.getDate(new Date()));
		try {
			username = URLDecoder.decode(username, "UTF-8");
			nickname = URLDecoder.decode(nickname, "UTF-8");
			request_name = URLDecoder.decode(request_name, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Page<Log> listlog = logService.getListLog(pageNumber, pageSize, username, nickname, request_name, date_q, date_z);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("total", listlog.getTotalRow());
		result.put("rows", listlog.getList());
		renderJson(JsonKit.toJson(result));
	}
}
