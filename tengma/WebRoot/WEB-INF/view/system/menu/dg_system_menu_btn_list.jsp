<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="dg-system-menu-btn-list" class="easyui-datagrid"
	data-options="
		url:'menu/listBtn',  
	    fitColumns:true,
	    singleSelect:true,
	    rownumbers:true,
		toolbar:[{
	    	text:'添加',
	    	iconCls:'icon-add',
	    	handler:function(){addMenuBtn()}
	    },'-',{
	    	text:'修改',
	    	iconCls:'icon-edit',
	    	handler:function(){Easyui_EditDialog('dg-system-menu-btn-list','dlg-system-menu-btn-save','fm-system-menu-btn-save')}
	    },'-',{
	    	text:'删除',
	    	iconCls:'icon-remove',
	    	handler:function(){Easyui_Delete('dg-system-menu-btn-list','menu/deleteBtn','id')}
	    }],
	    columns:[[    
	        {field:'btn_name',title:'按钮名称',width:40},     
	        {field:'btn_method',title:'按钮方法',width:120},  
	        {field:'order_id',title:'排序',width:30}  
	    ]]    
	">
</table> 
<script type="text/javascript">
function addMenuBtn() {
	Easyui_OpenDialog('dlg-system-menu-btn-save');
	var row = $('#treeGrid').treegrid('getSelected');
	$('#menu_id').val(row.id);
}
</script>