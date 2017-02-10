<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="dataGrid" class="easyui-datagrid"    
data-options="
	url:'log/list',
	pagination:true,  //分页 
    fit:true,
    fitColumns:true,
    rownumbers:true,
    nowrap:false,
    singleSelect:true,
    remoteSort:false, //本地排序
    sortName:'username', //默认排序的字段
    sortOrder:'asc', //默认的排序规则 ‘asc’、‘desc’
    toolbar:'#tb'
">    
    <thead>   
        <tr>   
            <th data-options="field:'username',title:'登陆账号',width:20"></th>   
            <th data-options="field:'nickname',title:'用户名称',width:20"></th>   
            <th data-options="field:'ip_address',title:'IP地址',width:20"></th>   
            <th data-options="field:'request_name',title:'操作模块',width:20"></th>   
            <th data-options="field:'request_url',title:'请求地址',width:40"></th>   
            <th data-options="field:'url_para',title:'url参数',width:20"></th>   
            <th data-options="field:'new_values',title:'新值',width:80"></th>   
            <th data-options="field:'operation_time',title:'操作时间',width:40,sortable:true"></th>   
        </tr>   
    </thead>  
</table> 
<div id="tb">
	<div class="easyui-panel" style="margin:0px;padding:6px;width:100%;" data-options="closable:false,collapsible:true" title="日志管理">
	<div>
	            登陆账号：<input id="username" class="easyui-textbox" style="width:110px">
	            用户名称：<input id="nickname" class="easyui-textbox" style="width:110px">
	            操作模块：<input id="request_name" class="easyui-textbox" style="width:110px">
	            操作时间：<input id="date_q" class="easyui-datebox" style="width:110px">
	            操作模块：<input id="date_z" class="easyui-datebox" style="width:110px">
	    <a href="javascript:void(0);" onClick="javascript:searchLog();" class="easyui-linkbutton" iconCls="icon-search">搜  索</a>
	</div>
	</div>
</div>