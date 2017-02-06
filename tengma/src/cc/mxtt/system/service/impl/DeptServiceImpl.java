package cc.mxtt.system.service.impl;

import java.util.List;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

import cc.mxtt.common.utils.DbUtil;
import cc.mxtt.system.model.Dept;
import cc.mxtt.system.model.User;
import cc.mxtt.system.service.DeptService;

public class DeptServiceImpl implements DeptService{
	
	@Override
	public Dept findById(String id) {
		return Dept.dao.findById(id);
	}
    
	@Override
	public boolean create(Dept dept) {
		return dept.save();
	}

	@Override
	public boolean update(Dept dept) {
		return dept.update();
	}

	@Override
	public boolean delete(String id) {
		return Dept.dao.deleteById(id);
	}
	
	@Override
	public boolean existsUser(String dept_id) {
		String sql = "select * from sys_user where dept_id=?";
		User user = User.dao.findFirst(sql, dept_id);
		if (user==null){
			return false;
		}
		return true;
	}
	
	@Override
	public boolean existsDept(String dept_id) {
		String sql ="select * from sys_dept where parent_id=?";
		Dept dept = Dept.dao.findFirst(sql, dept_id);
		if (dept==null){
			return false;
		}
		return true;
	}
	
	@Override
	public List<Record> getTreeGrid(String parentid) {
		String id = "";
		if(parentid.substring(3, 11).equals("00000000")) {
			id = "%"+parentid.substring(0,3)+"%";
		} else if(parentid.substring(5, 11).equals("000000")) {
			id = "%"+parentid.substring(0,5)+"%";
		} else if(parentid.substring(7, 11).equals("0000")) {
			id = "%"+parentid.substring(0,7)+"%";
		} else if(parentid.substring(9, 11).equals("00")) {
			id = "%"+parentid.substring(0,9)+"%";
		}
		String sql = "select t.id,t.name,t.fullname,t.parent_id,t.order_id from sys_dept t where t.id like ? order by t.order_id";
		
		return DbUtil.createTree(Db.find(sql,id), parentid);
	}



}
