package com.yunshi.tengma.system.model;

import java.util.ArrayList;
import java.util.List;

public class TreeGridMenu {
	String id;
	String name;
	String description;
	String iconCls;
	String url;
	String parent_id;
	String order_id;
	List<TreeGridMenu> children = new ArrayList<TreeGridMenu>();
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
	public String getIconCls() {
		return iconCls;
	}
	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
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
	public List<TreeGridMenu> getChildren() {
		return children;
	}
	public void setChildren(List<TreeGridMenu> children) {
		this.children = children;
	}

}
