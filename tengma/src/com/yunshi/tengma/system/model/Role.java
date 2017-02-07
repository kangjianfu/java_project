package com.yunshi.tengma.system.model;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

@SuppressWarnings("serial")
public class Role extends Model<Role>{
	
	public static final Role dao = new Role();
	
	public Page<Role> paginate(int pageNumber, int pageSize){
		return paginate(pageNumber,pageSize,"select id,name,description,order_id","from sys_role order by order_id");
	}
}
