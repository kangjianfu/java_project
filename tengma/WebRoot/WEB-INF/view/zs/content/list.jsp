<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="dg-zs-content-list" class="easyui-datagrid" width="auto" height="auto"
data-options="
	url:'zs/listContent',
	pagination:true,  //分页 
    fit:true,
    fitColumns:true,
    rownumbers:true,
    singleSelect:true,
    remoteSort:false, //本地排序
    sortName:'createtime', //默认排序的字段
    sortOrder:'desc', //默认的排序规则 ‘asc’、‘desc’
    toolbar:'#tb-zs-content'
">
	<thead>
		<tr>
			<th data-options="field:'id',title:'ID',width:40,sortable:true"></th> 
			<th data-options="field:'name',title:'分类名称',width:80,sortable:true"></th>
			<th data-options="field:'question',title:'问题',width:200,sortable:true"></th>
			<th data-options="field:'answer',title:'答案',width:400,sortable:true"></th>
			<th data-options="field:'levelname',title:'难易程度',width:60,sortable:true"></th>
			<th data-options="field:'sharename',title:'知识类型',width:60,sortable:true"></th>
			<th data-options="field:'nickname',title:'上传用户',width:80,sortable:true"></th>
			<th data-options="field:'createtime',title:'创建时间',width:120,sortable:true"></th>
		</tr>
	</thead>
</table>
<div id="tb-zs-content" style="padding:2px 5px;display: none;">
	<a href="javascript:void(0);" onClick="Easyui_OpenDialog('dlg-zs-content-save')" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
	<a href="javascript:void(0);" onClick="Easyui_EditDialog('dg-zs-content-list','dlg-zs-content-save','fm-zs-content-save')" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
	<a href="javascript:void(0);" onClick="Easyui_Delete('dg-zs-content-list','zs/deleteContent','id')" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
	<a href="javascript:void(0);" onClick="Easyui_Search('dg-zs-content-list','fm-zs-content-search')" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
</div>
