package com.yunshi.tengma.system.model;

import java.util.ArrayList;
import java.util.List;

public class TreeMenu {
	String id;
	String text;
	String url;
	String iconCls;
	boolean checked;
	List<TreeMenu> children = new ArrayList<TreeMenu>();
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getIconCls() {
		return iconCls;
	}
	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
	public boolean getChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	public List<TreeMenu> getChildren() {
		return children;
	}
	public void setChildren(List<TreeMenu> children) {
		this.children = children;
	}
}
