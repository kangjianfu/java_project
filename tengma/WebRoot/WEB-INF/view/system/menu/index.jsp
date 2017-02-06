<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%--公用页面 --%>
<%@ include file="/common/headnormal.jsp"%>
<script type="text/javascript" src="../js/system/menu.js"></script>
</head>
<body>
<div class="easyui-layout" data-options="fit:true" style="margin-top:2px;padding:1px">
	<div data-options="region:'center',split:true"  title="菜单管理" height="auto" style="padding:2px 2px;width:60%">	
		<!-- 菜单树形列表 -->
		<jsp:include page="dg_system_menu_list.jsp"></jsp:include>
		<!-- 添加、修改菜单 -->
		<jsp:include page="dlg_system_menu_save.jsp"></jsp:include>
		<!-- 更改菜单层级 -->
		<jsp:include page="dlg_system_menu_savecj.jsp"></jsp:include>
	</div>
	<div data-options="region:'east',split:true" title="权限按钮管理" height="auto" style="padding:2px 2px;width:40%">
		<!-- 按钮列表 -->
		<jsp:include page="dg_system_menu_btn_list.jsp"></jsp:include>
		<!-- 添加、修改按钮 -->
		<jsp:include page="dlg_system_menu_btn_save.jsp"></jsp:include>
	</div>
</div>
</body>
</html>