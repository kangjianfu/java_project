<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="fm-system-user-search" action="system/user/list">
	<table>
		<tr>
			<td>部门名称：</td>
		    <td><select id="s_dept_id" name="s_dept_id" class="easyui-combotree" style="width:360px;"   
        data-options="url:'core/treeCurrentUserDept',editable:false"></select></td>
		    <td>登陆账号或用户名称：</td>
		    <td><input id="s_username" name="s_username" class="easyui-textbox" style="width:120px" /></td>
		</tr>
	</table>
</form>		