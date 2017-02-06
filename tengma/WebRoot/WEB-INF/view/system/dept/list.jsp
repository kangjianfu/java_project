<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="tg-system-dept-list" class="easyui-treegrid"
	data-options="
		url: 'dept/list',
		method: 'get',
		rownumbers: true,
		idField: 'id',
		treeField: 'name',
		fit:true,
		fitColumns:true,
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
			text:'更改部门层级',
			iconCls:'icon-wrench',
			handler:function(){openDeptChooseDialog()}
		}]
	">
<thead>
	<tr>
		<th data-options="field:'id',width:80">ID</th>
		<th data-options="field:'name',width:300">部门名称</th>
		<th data-options="field:'fullname',width:200">部门全称</th>
		<th data-options="field:'order_id',width:80,align:'right'">排序</th>
	</tr>
</thead>
</table>