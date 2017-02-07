package com.yunshi.tengma.system.model;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

@SuppressWarnings("serial")
public class User extends Model<User>{
	
	public static final User dao = new User();

	public User findLoginUser(String username, String userpassword) {
		String sql = "select * from sys_user where username=? and password=?" ;
		return User.dao.findFirst(sql, username,userpassword);
	}
	
	public Page<User> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber,pageSize,"select *","from sys_user order by order_id asc");
	}
}
