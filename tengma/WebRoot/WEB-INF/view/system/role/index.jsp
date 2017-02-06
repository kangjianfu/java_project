<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%--公用页面 --%>
<%@ include file="/common/headnormal.jsp"%>
<script type="text/javascript" src="../js/system/role.js"></script>
</head>
<body>
<!-- 角色列表 -->
<jsp:include page="list.jsp"></jsp:include>
<!-- 添加、修改对话框 -->
<jsp:include page="dialog.jsp"></jsp:include>
<!-- 菜单分配对话框 -->
<jsp:include page="dialog1.jsp"></jsp:include>
<!-- 用户分配对话框 -->
<jsp:include page="dialog2.jsp"></jsp:include>
</body>
</html>