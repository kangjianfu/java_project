<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="easyui-layout" data-options="fit:true" style="margin-top:2px;padding:1px">
	<div data-options="region:'north',split:true"  title="查询管理" height="auto" style="padding:2px 2px;width:40%">	
		<!-- 查询条件 -->
		<jsp:include page="fm_system_user_search.jsp"></jsp:include>
	</div>
	<div data-options="region:'center',split:true" height="auto" style="padding:2px 2px;width:60%">
		<jsp:include page="dg_system_user_list.jsp"></jsp:include>
		<!-- 添加/修改用户 -->
		<jsp:include page="dlg_system_user_save.jsp"></jsp:include>
		<!-- 用户启停标志维护 -->
		<jsp:include page="dlg_system_user_save_qt.jsp"></jsp:include>
		<!-- 用户部门选择对话框 -->
		<jsp:include page="dlg_system_user_dept_list.jsp"></jsp:include>
		<!-- 用户角色分配对话框 -->
		<jsp:include page="dlg_system_user_role_list.jsp"></jsp:include>
	</div>
</div>