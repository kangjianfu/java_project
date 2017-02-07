package com.yunshi.tengma.system.controller;

import java.util.HashMap;
import java.util.Map;

import com.jfinal.plugin.activerecord.Page;
import com.jfinal.render.JsonRender;
import com.yunshi.tengma.common.core.BaseController;
import com.yunshi.tengma.common.model.XxDict;
import com.yunshi.tengma.common.model.XxDictDetail;
import com.yunshi.tengma.system.service.XxSjzdService;
import com.yunshi.tengma.system.service.impl.XxSjzdServiceImpl;

public class XxSjzdController extends BaseController{
	XxSjzdService sjzdService = new XxSjzdServiceImpl();
	//数据字典大类
	public void index() {
		render("index.jsp");
	}
	//大类明细
	public void listZddl() {
		int pageNumber = getParaToInt("page",1);
		int pageSize = getParaToInt("rows",10);
		Page<XxDict> list = sjzdService.getListZddl(pageNumber, pageSize);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("total", list.getTotalRow());
		result.put("rows", list.getList());
		renderJson(result);
	}
	//添加或修改大类
	public void saveZddl() {
		boolean flag = false;
		String msg = "数据字典大类保存失败！";
		String id = getPara("id","");
		String bm = getPara("bm");
		String mc = getPara("mc");
		String qybz = getPara("qybz");
		String xgbz = getPara("xgbz");
		XxDict XxDict = new XxDict();
		if("".equals(id)) {
			//XxDict.set("id","SEQ_SYS_XX_DICT.nextval");
			XxDict.set("bm", bm);
			XxDict.set("mc", mc);
			XxDict.set("qybz", qybz);
			XxDict.set("xgbz", xgbz);
			if(XxDict.save()) {
				flag = true;
				msg = "数字字典保存成功！";
			} else {
				flag = false;
				msg = "数据字典保存失败！";
			}
		} else {
			XxDict.set("id", id);
			XxDict.set("bm", bm);
			XxDict.set("mc", mc);
			XxDict.set("qybz", qybz);
			XxDict.set("xgbz", xgbz);
			if(XxDict.update()) {
				flag = true;
				msg = "数字字典大类保存成功！";
			} else {
				flag = false;
				msg = "数据字典大类保存失败！";
			}
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("flag", flag);
		result.put("msg", msg);
		render(new JsonRender(result).forIE());
	}
	//删除字典
	public void deleteZddl() {
		String id = getPara("id");
		Map<String, Object> result = new HashMap<String, Object>();
		if(!"".equals(id)) {
			if(sjzdService.deleteZddl(id)) {
				result.put("flag", true);
				result.put("msg", "数据字典大类删除成功！");
			} else {
				result.put("flag", false);
				result.put("msg", "数据字典大类删除失败,请先删除字典大类下面的字典细类！");
			}
			
		} else {
			result.put("flag",false);
			result.put("msg", "数据字典ID不能为空!");
		}
		render(new JsonRender(result).forIE());
	}
	//数据字典细类
	public void zdxl() {
		render("zdxl.jsp");
	}
	//细类明细
	public void listZdxl() {
		int pageNumber = getParaToInt("page",1);
		int pageSize = getParaToInt("rows",10);
		String dict_id = getPara(0,"");
		Page<XxDictDetail> list = sjzdService.getListZdxl(pageNumber, pageSize, dict_id);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("total", list.getTotalRow());
		result.put("rows", list.getList());
		renderJson(result);
	}
	//添加或修改细类
	public void saveZdxl() {
		boolean flag = false;
		String msg = "字典细类保存失败！";
		String id = getPara("id","");
		String bm = getPara("bm");
		String mc = getPara("mc");
		String order_id = getPara("order_id");
		String qybz = getPara("qybz");
		String xgbz = getPara("xgbz");
		String dict_id = getPara("dict_id");
		XxDictDetail xxDictDetail = new XxDictDetail();
		if("".equals(id)) {
			//xxDictDetail.set("id","SEQ_SYS_XX_DICT_DETAIL.nextval");
			xxDictDetail.set("bm", bm);
			xxDictDetail.set("mc", mc);
			xxDictDetail.set("order_id", order_id);
			xxDictDetail.set("qybz", qybz);
			xxDictDetail.set("xgbz", xgbz);
			xxDictDetail.set("dict_id", dict_id);
			if(xxDictDetail.save()) {
				flag = true;
				msg = "数字字典细类保存成功！";
			} else {
				flag = false;
				msg = "数据字典细类保存失败！";
			}
		} else {
			xxDictDetail.set("id", id);
			xxDictDetail.set("bm", bm);
			xxDictDetail.set("mc", mc);
			xxDictDetail.set("order_id", order_id);
			xxDictDetail.set("qybz", qybz);
			xxDictDetail.set("xgbz", xgbz);
			xxDictDetail.set("dict_id", dict_id);
			if(xxDictDetail.update()) {
				flag = true;
				msg = "数字字典细类保存成功！";
			} else {
				flag = false;
				msg = "数据字典细类保存失败！";
			}
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("flag", flag);
		result.put("msg", msg);
		render(new JsonRender(result).forIE());
	}
	//删除字典细类
	public void deleteZdxl() {
		String id = getPara("id");
		Map<String, Object> result = new HashMap<String, Object>();
		if(!"".equals(id)) {
			if(sjzdService.deleteZdxl(id)) {
				result.put("flag", true);
				result.put("msg", "数据字典细类删除成功！");
			} else {
				result.put("flag", false);
				result.put("msg", "数据字典细类删除失败！");
			}
			
		} else {
			result.put("flag",false);
			result.put("msg", "数据字典细类ID不能为空!");
		}
		render(new JsonRender(result).forIE());
	}
}
