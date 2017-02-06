<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); %>
<div style="width:100%;" border="1">
	 <form id="fm-login-again" action="<%=path %>/reChecklogin?request_url=${request_url}" method="post">
	 	<table cellspacing="4px;" align="center" style="margin-top:200px;">
	 		<tr>
	 			<td>用户名：</td>
	 			<td>
	 			<input id="user.username" name="user.username" class="easyui-textbox" data-options="required:true" /></td>
	 		</tr>
	 		<tr>
	 			<td>密  码：</td>
	 			<td><input type="password" id="user.password" name="user.password" class="easyui-textbox" data-options="required:true" /></td>
	 		</tr>
	 		<tr>
	 			<td></td>
	 			<td><input type="submit" value="登录"/></td>
	 		</tr>
	 	</table>	
	 </form>
</div>