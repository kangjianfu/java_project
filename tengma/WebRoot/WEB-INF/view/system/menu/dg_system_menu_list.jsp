<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="treeGrid" class="easyui-treegrid"
	data-options="
		url:'menu/list',   
	    method: 'get',
	    idField:'id',    
	    treeField:'name',
	    fit:true,
	    fitColumns:true,
	    rownumbers:true,
	    onClickRow: function(row){
			$('#dg-system-menu-btn-list').datagrid({
				url:'menu/listBtn/'+row.id
			});
		},toolbar:[{
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
	    	text:'更改菜单层级',
	    	iconCls:'icon-wrench',
	    	handler:function(){openMenuChooseDialog()}
	    }],
	    columns:[[    
	        {field:'name',title:'菜单名称',width:180},    
	        {field:'url',title:'链接地址',width:200},    
	        {field:'description',title:'备注',width:200},    
	        {field:'order_id',title:'排序',width:40}    
	    ]]    
	">
</table> 