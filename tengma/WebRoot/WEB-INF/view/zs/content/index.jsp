<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="easyui-layout" data-options="fit:true" style="margin-top:1px;padding:1px">
	<div data-options="region:'north',split:true" title="查询管理" height="auto" style="padding:8px 10px;">
		<jsp:include page="search.jsp"></jsp:include>
	</div>
	<div data-options="region:'center',split:true,border:false">
		<jsp:include page="list.jsp"></jsp:include>
		<jsp:include page="save.jsp"></jsp:include>
	</div>
</div>