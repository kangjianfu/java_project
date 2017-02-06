<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%--公用页面 --%>
<%@ include file="/common/headnormal.jsp"%>
</head>
<body>
<table id="dataGrid" class="easyui-datagrid"    
data-options="
	url:'system/user/tongxunlu',
	pagination:true,  //分页 
    fit:true,
    fitColumns:true,
    rownumbers:true,
    singleSelect:true,
    pageSize:20,
    remoteSort:false, //本地排序
    //sortName:'dept_name', //默认排序的字段
    sortOrder:'asc', //默认的排序规则 ‘asc’、‘desc’
    toolbar:'#tb'
">    
    <thead>   
        <tr>   
            <th data-options="field:'dept_name',title:'所在部门',width:120,sortable:true"></th>  
            <th data-options="field:'username',title:'登录账号',width:60,sortable:true"></th>   
            <th data-options="field:'nickname',title:'用户名称',width:60,sortable:true"></th>   
            <th data-options="field:'zuoji',title:'座机',width:70,sortable:true"></th>  
            <th data-options="field:'duanhao',title:'短号',width:70,sortable:true"></th> 
            <th data-options="field:'shouji',title:'手机',width:70,sortable:true"></th>                     
           <!--<th data-options="field:'mima',title:'账号安全性',sortable:true"></th>  -->   
            <th data-options="field:'status',title:'启用状态',width:40,sortable:true"></th>   
        </tr>   
    </thead>  
</table> 

<div id="tb">
	<div class="easyui-panel" style="margin:0px;padding:6px;width:100%;" data-options="closable:false,collapsible:true" title="六盘水市国家税务局通讯录">
	<div style="float:left;">
	       登录账号或用户名称：<input id="usernames" class="easyui-textbox" style="width:110px">
	   <a href="javascript:void(0);" onClick="javascript:searchTongXunLu();" class="easyui-linkbutton" iconCls="icon-search">搜  索</a> 
	   &nbsp;&nbsp;&nbsp;&nbsp;<font color="red">如果您的个人信息有误，请您及时登陆《六盘水市国家税务局综合应用管理平台》修改个人信息及登录密码(默认密码：AbCd-12345)！&nbsp;&nbsp;<a target="_blank" href="http://89.48.16.31:8080/zhyypt"><font color="green">点此登录</font></a></font>
	</div>
	<div style="float:right;">
	             
	</div>
	</div>
</div>
<script type="text/javascript">
function searchTongXunLu(){
	$("#dataGrid").datagrid({
		url:"system/user/tongxunlu/"+$("#usernames").val(),
		method:'post'
	});
}
$(".easyui-panel").keypress(function (e){ 
	var code = event.keyCode; 
	if (13 == code) { 
		searchTongXunLu();
	} 
	}); 
</script>
</body>
</html>