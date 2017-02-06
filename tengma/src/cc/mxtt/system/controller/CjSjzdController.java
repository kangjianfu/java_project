package cc.mxtt.system.controller;

import java.util.HashMap;
import java.util.Map;

import com.jfinal.render.JsonRender;

import cc.mxtt.common.core.BaseController;
import cc.mxtt.common.model.CjDict;
import cc.mxtt.system.service.CjSjzdService;
import cc.mxtt.system.service.impl.CjSjzdServiceImpl;

/**
 *@description 层级数据字典
 *@author 饶诗伟
 *@date 2016年4月22日 下午2:48:59
 */
public class CjSjzdController extends BaseController{
	CjSjzdService cjSjzdService = new CjSjzdServiceImpl();
	
	public void index() {
		render("index.jsp");
	}
    //层级数据字典列表
	public void list() {
		renderJson(cjSjzdService.getListCjDict());
	}
	//添加、修改层级数据字典
	public void saveCjsjzd() {
		boolean flag = false;
		String msg = "层级数据字典保存失败！";
		String id = getPara("id","");
		String bm = getPara("bm");
		String mc = getPara("mc");
		String parent_id = getPara("parent_id");
		String order_id = getPara("order_id");
		String qybz = getPara("qybz");
		String xgbz = getPara("xgbz");
		CjDict Dict = new CjDict();
		if("".equals(id)) {
			//Dict.set("id","SEQ_SYS_CJ_DICT.nextval");
			Dict.set("bm", bm);
			Dict.set("mc", mc);
			Dict.set("parent_id", parent_id);
			Dict.set("order_id", order_id);
			Dict.set("qybz", qybz);
			Dict.set("xgbz", xgbz);
			if(Dict.save()) {
				flag = true;
				msg = "层级数字字典保存成功！";
			} else {
				flag = false;
				msg = "层级数据字典保存失败！";
			}
		} else {
			Dict.set("id", id);
			Dict.set("bm", bm);
			Dict.set("mc", mc);
			Dict.set("parent_id", parent_id);
			Dict.set("order_id", order_id);
			Dict.set("qybz", qybz);
			Dict.set("xgbz", xgbz);
			if(Dict.update()) {
				flag = true;
				msg = "层级数字字典修改成功！";
			} else {
				flag = false;
				msg = "层级数据字典修改失败！";
			}
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("flag", flag);
		result.put("msg", msg);
		render(new JsonRender(result).forIE());
	}
	//删除字典
	public void deleteCjsjzd() {
		String id = getPara("id");
		Map<String, Object> result = new HashMap<String, Object>();
		if(!"".equals(id)) {
			if(cjSjzdService.deleteCjsjzd(id)) {
				result.put("flag", true);
				result.put("msg", "层级数据字典删除成功！");
			} else {
				result.put("flag", false);
				result.put("msg", "数据字典删除失败,请先删除该层级字典下面的字典细类！");
			}
			
		} else {
			result.put("flag",false);
			result.put("msg", "层级数据字典ID不能为空!");
		}
		render(new JsonRender(result).forIE());
	}
}
