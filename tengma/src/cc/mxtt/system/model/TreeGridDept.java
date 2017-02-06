package cc.mxtt.system.model;

import java.util.ArrayList;
import java.util.List;

public class TreeGridDept {
	String id;
	String name;
	String description;
	String parent_id;
	String order_id;
	List<TreeGridDept> children = new ArrayList<TreeGridDept>();
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getParent_id() {
		return parent_id;
	}
	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public List<TreeGridDept> getChildren() {
		return children;
	}
	public void setChildren(List<TreeGridDept> children) {
		this.children = children;
	}
	
	
}
