package cc.mxtt.system.model;

import java.util.List;

import cc.mxtt.common.utils.StringUtil;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class UserRole extends Model<UserRole>{
	
	public static final UserRole dao = new UserRole();
	
	public String getRoleIdsByUserId(String id) {
		String sql = "select a.role_id from sys_user_role a where a.user_id=?";
		List<UserRole> listUserRole = UserRole.dao.find(sql, id);
		String roleIds = "";
		for (UserRole r:listUserRole){
			if (roleIds.equals("")){
				roleIds = StringUtil.getString(r.getAttrs().get("role_id"));
			}else{
				roleIds = roleIds + "," + StringUtil.getString(r.getAttrs().get("role_id"));
			}
			
		}
		return roleIds;
	}
}
