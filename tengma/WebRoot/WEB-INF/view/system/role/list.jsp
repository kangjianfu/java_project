<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="dataGrid" class="easyui-datagrid"
	data-options="
	    url:'role/list', 
	    fit:true,
	    fitColumns:true,
	    singleSelect:true,
	    rownumbers:true,
	    remoteSort:false, //本地排序
	    //sortName:'name', //默认排序的字段
	    //sortOrder:'asc', //默认的排序规则 ‘asc’、‘desc’
	    toolbar:[{
	    	text:'添加',
	    	iconCls:'icon-add',
	    	handler:function(){openAddDialog()}
	    },'-',{
	    	text:'修改',
	    	iconCls:'icon-edit',
	    	handler:function(){openEditDialog()}
	    },'-',{
	    	text:'删除',
	    	iconCls:'icon-remove',
	    	handler:function(){openDeleteDialog()}
	    },'-',{
	    	text:'为角色分配菜单',
	    	iconCls:'icon-wrench',
	    	handler:function(){openMenuChooseDialog()}
	    },'-',{
	    	text:'为角色分配用户',
	    	iconCls:'icon-wrench',
	    	handler:function(){openUserChooseDialog()}
	    }]
	">
<thead>
	<tr>
		<th data-options="field:'id',title:'编号',width:20,align:'right',sortable:true"></th>
		<th data-options="field:'groupname',title:'角色分组',width:40,sortable:true"></th>
		<th data-options="field:'name',title:'角色名称',width:40,sortable:true"></th>
		<th data-options="field:'description',title:'描述',width:80,sortable:true"></th>
		<th data-options="field:'order_id',title:'排序',width:40,sortable:true"></th>
	</tr>
</thead>
</table> 