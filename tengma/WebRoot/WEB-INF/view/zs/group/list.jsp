<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<table id="tg-zs-group-list" class="easyui-treegrid" width="auto" height="auto"
data-options="
	url:'zs/listGroup',
    fit:true,
    fitColumns:false,
    rownumbers:true,
    singleSelect:true,
    idField:'id',    
    treeField:'name',
    toolbar:'#tb-zs-group'
">
	<thead>
		<tr>
			<th data-options="field:'id',title:'知识ID',width:100,sortable:true"></th> 
			<th data-options="field:'name',title:'分类名称',width:400,sortable:true"></th>
			<th data-options="field:'order_id',title:'排序',width:400,sortable:true"></th>
		</tr>
	</thead>
</table>
<div id="tb-zs-group" style="padding:2px 5px;display: none;">
	<a href="javascript:void(0);" onClick="Easyui_OpenDialog('dlg-zs-group-save')" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
	<a href="javascript:void(0);" onClick="Easyui_EditDialog('tg-zs-group-list','dlg-zs-group-save','fm-zs-group-save')" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
	<a href="javascript:void(0);" onClick="Easyui_Delete('tg-zs-group-list','zs/delete','id')" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
</div>
