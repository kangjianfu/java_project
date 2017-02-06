package cc.mxtt.system.service;

import java.util.List;

import com.jfinal.plugin.activerecord.Page;

import cc.mxtt.system.model.Role;
import cc.mxtt.system.model.User;

public interface UserService {
	/**
	 * 通过userid查处User对象
	 * @param id 用户id
	 * @return User对象
	 */
	public User findById(String id);
	/**
	 * 通过一连串userid返回User对象列表
	 * @param userids (id1,id2,id3,id4)
	 * @return List<User>
	 */
	public List<User> findByIds(String userids);
	/**
	 * 创建用户
	 * @param user
	 * @return User
	 */
	public boolean create(User user);
	public boolean update(User user);
	public int delete(String idValues);
	//删除用户ID与角色ID关联关系表中的有关用户ID的记录
	public int deleteUserRoleByUserId(String idValues);
	//为用户分配角色
	public boolean addUserRoleByUserIdRoleIds(String userid, String roleids);
	/**
	 * 为用户分配角色时使用的角色列表，增加checked字段标注该用户拥有的角色
	 * @param userid 用户ID 
	 * @param currentUserName  当前登录用户的登录账号
	 * @return
	 */
	public List<Role> getListRoleByUserId(String userid, String currentUserName);
	/**
	 * 获取当前登录用户可以管理的用户列表
	 * @param pageNumber
	 * @param pageSize
	 * @param qx_dept  登录用户所属税务局
	 * @param dept_id  查询条件-部门
	 * @param username 查询条件-用户
	 * @return
	 */
	public Page<User> getDataGrid(int pageNumber, int pageSize, String qx_dept, String dept_id,String username);
	//通讯录列表
	public Page<User> getTongXunLu(int pageNumber, int pageSize, String username1, String username2);
}
