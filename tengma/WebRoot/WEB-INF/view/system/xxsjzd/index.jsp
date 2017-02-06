<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="easyui-layout" data-options="fit:true" style="margin-top:2px;padding:1px">
	<div data-options="region:'west',split:true"  title="字典大类" height="auto" style="padding:2px 2px;width:40%">	
		<!-- 字典大类 -->
		<jsp:include page="dg_system_xxsjzd_zddl_list.jsp"></jsp:include>
		<jsp:include page="dlg_system_xxsjzd_zddl_save.jsp"></jsp:include>
	</div>
	<div data-options="region:'center',split:true" title="字典细类" height="auto" style="padding:2px 2px;width:60%">
		<!-- 字典细类 -->
		<jsp:include page="dg_system_xxsjzd_zdxl_list.jsp"></jsp:include>
		<jsp:include page="dlg_system_xxsjzd_zdxl_save.jsp"></jsp:include>
	</div>
</div>