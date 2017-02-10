package com.yunshi.tengma.customer.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.jfinal.aop.Before;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.render.JsonRender;
import com.yunshi.tengma.common.core.BaseController;
import com.yunshi.tengma.common.utils.DateUtil;
import com.yunshi.tengma.common.utils.MD5Util;
import com.yunshi.tengma.common.utils.Return.Json;
import com.yunshi.tengma.customer.model.Customer;
import com.yunshi.tengma.customer.service.CustomerServiceI;
import com.yunshi.tengma.customer.service.impl.CusromerServiceImpl;
import com.yunshi.tengma.logUtil.LogUtil;

public class CustomerController extends BaseController {
	CustomerServiceI customerService = new CusromerServiceImpl();
	public void index() {
		render("index.jsp");
	}
	public void list(){
		int pageNumber = getParaToInt("page",1);
		int pageSize = getParaToInt("rows",10);
		String phone = getPara("phone",""); //搜索条件，如果没有则为空
		String real_name = getPara("real_name",""); //搜索条件，如果没有则为空
		Page<Customer> listuser = customerService.getDataGrid(pageNumber, pageSize, phone, real_name);
		Json json=new Json();
		json.setRet(true);
		json.setRows(listuser.getList());
		json.setTotal(listuser.getTotalRow());
		renderJson(JsonKit.toJson(json));
	}
	//添加
	@Before(LogUtil.class)
	public void save(){
		boolean flag = false;
		String msg ="";
		Customer model = getModel(Customer.class,"");
		String typeString=getPara("type", "01");
		Map<String, Object> result = new HashMap<String, Object>();
		if(StrKit.isBlank(getPara("id"))) {
			model.set("id", DateUtil.getDateTimeSecond());
			model.set("type", typeString);
			model.set("source", "WZHT");
			model.set("password", MD5Util.md5(model.get("phone").toString()));
			model.set("create_time", DateUtil.getDateTime(new Date()));
			if(model.save()) {
				flag = true;
				msg = "用户信息保存成功！";
			} else {
				flag = false;
				msg = "用户信息保存失败！";
			}
		} else {
			model.set("type", typeString);
			model.set("id", getPara("id"));
			model.set("update_time", DateUtil.getDateTime(new Date()));
			if(model.update()) {
				flag = true;
				msg = "用户信息修改成功！";
			} else {
				flag = false;
				msg = "用户信息修改失败！";
			}
		}
		result.put("flag", flag);
		result.put("msg", msg);
		render(new JsonRender(result).forIE());
	}
	//删除
	@Before(LogUtil.class)
	public void deleteById() {
		Json json =new Json();
		String id=getPara("id");
		if(StrKit.isBlank(id)){
			json.setMsg("id 不能为空");
		}else{
			boolean deleteById = Customer.dao.deleteById(id);
			if (deleteById) {
				json.setRet(true);
				json.setMsg("删除成功");
			}else {
				json.setMsg("出现异常，删除失败。");
			}
		}
		renderJson(JsonKit.toJson(json));

	}
}
