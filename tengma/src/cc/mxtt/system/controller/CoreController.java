package cc.mxtt.system.controller;

import com.jfinal.kit.JsonKit;

import cc.mxtt.common.core.BaseController;

public class CoreController extends BaseController {
	public void index() {
		render("index.jsp");
	}
	/**
	 * 获取选项数据字典列表
	 * 前台JSP页面调用方法：
	 * core/listXxDict/ZGZC   //获取选项数据字典最高职称
	 */
	public void listXxDict() {
		String bm = getPara(0);
		renderJson(this.getListXxDict(bm));
	}
	/**
	 * 获取层级数据字典树
	 * 前台JSP页面调用方法：
	 * core/treeCjDict/KMLX   //获取层级数据字典科目类型
	 */
	public void treeCjDict() {
		String bm = getPara(0);
		String json = JsonKit.toJson(this.getTreeCjDict(bm));
		renderJson(json);
	}
	/**
	 * 获取登录用户可以操作的部门树
	 * 前台JSP页面调用的方法：
	 * core/treeCurrentUserDept
	 */
	public void treeCurrentUserDept() {
		renderJson(this.getTreeCurrentUserDept());
	}
	/**
	 * 获取登录用户可以操作的用户树
	 * 前台JSP页面调用的方法：
	 * core/treeCurrentUser()
	 */
	public void treeCurrentUser() {
		renderJson(this.getTreeCurrentUser());
	}
}
