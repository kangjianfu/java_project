package cc.mxtt.zs.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.render.JsonRender;

import cc.mxtt.common.core.BaseController;
import cc.mxtt.common.model.ZsContent;
import cc.mxtt.common.model.ZsGroup;
import cc.mxtt.system.model.User;
import cc.mxtt.zs.service.ZsService;
import cc.mxtt.zs.service.impl.ZsServiceImpl;

public class ZsController extends BaseController{
	ZsService zsService = new ZsServiceImpl();
	//分组管理
	public void group() {
		render("group/index.jsp");
	}
	//知识分类列表
	public void listGroup() {
		List<Record> list = zsService.getTreeGroup();
		renderJson(list);
	}
	//获取知识一级分类列表
	public void listGroupLevel1() {
		renderJson(zsService.getListGroupLevel1());
	}
	//获取知识二级分类列表
	public void listGroupLevel2() {
		renderJson(zsService.getListGroupLevel2());
	}
	//获取知识难易程度（选项数据字典NYCD）
	public void listZsLevel() {
		renderJson(this.getListXxDict("NYCD"));
	}
	//添加知识一级分类
	public void save(){
		int id = getParaToInt("id",0);
		String name = getPara("name");
		int parent_id = getParaToInt("parent_id");
		String order_id = getPara("order_id");
		ZsGroup group = new ZsGroup();
		group.setName(name);
		group.setOrderId(order_id);
		group.setParentId(parent_id);
		Map<String,Object> result = new HashMap<String, Object>();
		if(id==0) {//添加知识
			if(group.save()) {
				result.put("flag", true);
				result.put("msg", "知识分类添加成功！");
			} else {
				result.put("flag", false);
				result.put("msg", "知识分类添加失败!");
			}
		} else {//修改知识
			group.setId(id);
			if(group.update()) {
				result.put("flag", true);
				result.put("msg", "知识分类修改成功！");
			} else {
				result.put("flag", false);
				result.put("msg", "知识分类修改失败！");
			}
		}
		render(new JsonRender(result).forIE());
	}
	//删除知识分类
	public void delete() {
		int id = getParaToInt("id",0);
		Map<String, Object> result = new  HashMap<String, Object>();
		if(id!=0){
			result = zsService.deleteGroupById(id);
		} else {
			result.put("flag", false);
			result.put("msg", "非法操作！");
		}
		render(new JsonRender(result).forIE());
	}
	public void content() {
		render("content/index.jsp");
	}
	//个人知识列表
	public void listContent() {
		int pageNumber = getParaToInt("page",1);
		int pageSize = getParaToInt("rows",10);
		User user = getCurrentUser();
		String user_id = user.get("id").toString();
		HashMap<String, String[]> paraMap = new HashMap<String, String[]>(getParaMap());
		paraMap.put("user_id", new String[]{user_id});
		Page<Record> pageContent = zsService.getPageContent(pageNumber, pageSize, paraMap);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("total", pageContent.getTotalRow());
		result.put("rows", pageContent.getList());
		renderJson(result);
	}
	public void saveContent() {
		int id = getParaToInt("id",0);
		String question = getPara("question");
		String answer = getPara("answer");
		int group_id = getParaToInt("group_id");
		User user = getCurrentUser();
		Long user_id = user.getLong("id");
		String level = getPara("level");
		String share = getPara("share");
		ZsContent content = new ZsContent();
		content.setQuestion(question);
		content.setAnswer(answer);
		content.setGroupId(group_id);
		content.setUserId(user_id.intValue());
		content.setLevel(level);
		content.setShare(share);
		content.setCreatetime(new Date());
		Map<String,Object> result = new HashMap<String, Object>();
		if(id==0) {
			if(content.save()) {
				result.put("flag", true);
				result.put("msg", "知识内容添加成功！");
			} else {
				result.put("flag", false);
				result.put("msg", "知识内容添加失败！");
			}
		} else {
			content.setId(id);
			if(content.update()) {
				result.put("flag", true);
				result.put("msg", "知识内容修改成功！");
			} else {
				result.put("flag", false);
				result.put("msg", "知识内容修改失败！");
			}
		}
		render(new JsonRender(result).forIE());
	}
	//删除知识内容
	public void deleteContent() {
		int id = getParaToInt("id",0);
		Map<String, Object> result = new  HashMap<String, Object>();
		if(id!=0){
			result = zsService.deleteContentById(id);
		} else {
			result.put("flag", false);
			result.put("msg", "非法操作！");
		}
		render(new JsonRender(result).forIE());
	}
}
