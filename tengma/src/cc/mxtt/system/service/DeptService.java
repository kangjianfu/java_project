package cc.mxtt.system.service;

import java.util.List;

import com.jfinal.plugin.activerecord.Record;

import cc.mxtt.system.model.Dept;

public interface DeptService {
	public Dept findById(String id);
	public boolean create(Dept dept);
	public boolean update(Dept dept);
	public boolean delete(String id);
	//判断该部门下是否存在用户
	public boolean existsUser(String deptid);
	//判断该部门是否是其他部门的上级部门
	public boolean existsDept(String deptid);
	//获取部门树
	public List<Record> getTreeGrid(String parentid);
}
