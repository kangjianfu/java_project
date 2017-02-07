package com.yunshi.tengma.system.model;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.plugin.activerecord.Model;
import com.yunshi.tengma.common.utils.StringUtil;

@SuppressWarnings("serial")
public class Dept extends Model<Dept>{
	
	public static final Dept dao = new Dept();
	List<TreeGridDept> children = new ArrayList<TreeGridDept>();

	public List<TreeGridDept> getChildren() {
		return children;
	}

	public void setChildren(List<TreeGridDept> children) {
		this.children = children;
	}

	//部门树(dept.getAttrs()方法只能写在Model里，所以没写在Service里)
	public List<Dept> getParentListDept(String id){
		String sql = "select t.id,t.name,t.fullname,t.parent_id,t.order_id from sys_dept t where t.parent_id=? order by t.order_id";
		return Dept.dao.find(sql,id);	
	}

	public List<TreeGridDept> getTreeGridListDept(List<Dept> parentList){
		List<TreeGridDept> listTreeDept = new ArrayList<TreeGridDept>();
		for(Dept dept :parentList){
			TreeGridDept treeDept = new TreeGridDept();
			treeDept.setId(StringUtil.getString(dept.getAttrs().get("id")));
			treeDept.setName(StringUtil.getString(dept.getAttrs().get("name")));
			treeDept.setDescription(StringUtil.getString(dept.getAttrs().get("fullname")));
			treeDept.setParent_id(StringUtil.getString(dept.getAttrs().get("parent_id")));
			treeDept.setOrder_id(StringUtil.getString(dept.getAttrs().get("order_id")));
			treeDept.setChildren(getTreeGridListDept(getParentListDept(dept.getAttrs().get("id").toString())));	
			listTreeDept.add(treeDept);
		}
		//System.out.println(JsonKit.toJson(listTreeDept));
		return listTreeDept;
	}
	
}
