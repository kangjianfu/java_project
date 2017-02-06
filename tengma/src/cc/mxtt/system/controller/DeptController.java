package cc.mxtt.system.controller;

import java.util.HashMap;
import java.util.Map;

import com.jfinal.aop.Before;
import com.jfinal.render.JsonRender;

import cc.mxtt.common.core.BaseController;
import cc.mxtt.system.interceptor.DeptLogInterceptor;
import cc.mxtt.system.model.Dept;
import cc.mxtt.system.service.DeptService;
import cc.mxtt.system.service.impl.DeptServiceImpl;

public class DeptController extends BaseController{
	DeptService deptService = new DeptServiceImpl();
	
	public void index() {
		render("index.jsp");
	}
	//获取当前登录用户可以选择的部门
	public void list() {
		renderJson(this.getTreeCurrentUserDept());
	}
	@Before(DeptLogInterceptor.class)
	public void add(){
		Map<String, Object> result = new HashMap<String, Object>();
		Dept d = Dept.dao.findFirst("select id from sys_dept where id=?",getPara("id"));
		if(d==null) {
			Dept dept = new Dept();
			dept.set("id", getPara("id"));
			dept.set("name", getPara("name"));
			dept.set("fullname", getPara("fullname"));
			dept.set("parent_id", getPara("parent_id"));
			dept.set("order_id", getPara("order_id"));
			if (deptService.create(dept)){		
				result.put("flag", true);
				result.put("msg", "部门添加成功！");
			}else{
				result.put("flag", false);
				result.put("msg", "部门添加失败！");
			}
		}else{
			result.put("flag", false);
			result.put("msg", "部门添加失败，部门ID不能重复！");
		}	
		render(new JsonRender(result).forIE());
	}
	@Before(DeptLogInterceptor.class)
	public void edit(){
		Dept dept = deptService.findById(getPara("id"));
		dept.set("name", getPara("name"));
		dept.set("fullname", getPara("fullname"));
		dept.set("order_id", getPara("order_id"));
		Map<String, Object> result = new HashMap<String, Object>();
		if(deptService.update(dept)){
			result.put("flag", true);
			result.put("msg", "部门信息修改成功！");
		}else{
			result.put("flag", false);
			result.put("msg", "部门信息修改失败！");
		}
		render(new JsonRender(result).forIE());
	}
	@Before(DeptLogInterceptor.class)
	public void delete(){
		Map<String, Object> result = new HashMap<String, Object>();
		boolean flag = true;
		String Msg = "";
		if (deptService.existsDept(getPara("id"))){
			flag = false;
			Msg = "该部门存在下属部门，不能删除！";
		}
		if (deptService.existsUser(getPara("id"))){
			flag = false;
			Msg = "该部门已有用户，不能删除！";
		}
		if (flag==true) {
			if(deptService.delete(getPara("id"))){
				Msg = "删除成功！";
			}else{
				flag=false;
				Msg = "删除失败！";
			}
		}
		result.put("flag", flag);
		result.put("msg", Msg);
		render(new JsonRender(result).forIE());
	}
	public void upparentid(){
		Dept dept = deptService.findById(getPara("deptid"));
		dept.set("parent_id", getPara("parentid"));
		if(deptService.update(dept)){
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("flag", true);
			result.put("msg", "部门层级修改成功！");
			render(new JsonRender(result).forIE());
		}else{
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("flag", false);
			result.put("msg", "部门层级修改失败！");
			render(new JsonRender(result).forIE());
		}
	}

}
