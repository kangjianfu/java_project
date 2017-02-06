<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="dg-system-xxsjzd-zdxl-list" class="easyui-datagrid" 
data-options="
	url:'',
	pagination:true,  //分页 
    fitColumns:true,
    singleSelect:true,
    rownumbers:true,
    onClickRow: function(index,row){
		if(row.xgbz=='N') {
			$('#tb-system-xxsjzd-zdxl-edit').linkbutton({
				disabled:true
			});
			$('#tb-system-xxsjzd-zdxl-delete').linkbutton({
				disabled:true
			});
		} else {
			$('#tb-system-xxsjzd-zdxl-edit').linkbutton({
				disabled:false
			});
			$('#tb-system-xxsjzd-zdxl-delete').linkbutton({
				disabled:false
			});
		}
		
	},
    rowStyler: function(index,row){
		if(row.xgbz=='N'){
			return 'color:red;';
		}
	},
    toolbar:'#tb-system-xxsjzd-zdxl'
">    
    <thead>   
        <tr>  
            <th data-options="field:'bm',title:'字典编码',width:50"></th>   
            <th data-options="field:'mc',title:'字典名称',width:120"></th>   
            <th data-options="field:'order_id',title:'字典排序',width:30"></th> 
            <th data-options="field:'qybzmc',title:'启用标志',width:34"></th>
            <th data-options="field:'xgbzmc',title:'修改标志',width:40"></th>
        </tr>   
    </thead>  
</table>
<div id="tb-system-xxsjzd-zdxl" style="padding:2px 5px;display: none;">
	<a id="tb-system-xxsjzd-zdxl-add" href="javascript:void(0);" onClick="addjypxSjzdZdxl()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
	<a id="tb-system-xxsjzd-zdxl-edit" href="javascript:void(0);" onClick="Easyui_EditDialog('dg-system-xxsjzd-zdxl-list','dlg-system-xxsjzd-zdxl-save','fm-system-xxsjzd-zdxl-save')" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
	<a id="tb-system-xxsjzd-zdxl-delete" href="javascript:void(0);" onClick="Easyui_Delete('dg-system-xxsjzd-zdxl-list','system/xxsjzd/deleteZdxl','id')" class="easyui-linkbutton" iconCls="icon-delete" plain="true">删除</a>
</div>
<script type="text/javascript">
function addjypxSjzdZdxl() {
	Easyui_OpenDialog('dlg-system-xxsjzd-zdxl-save');
	var row = $('#dg-system-xxsjzd-zddl-list').datagrid('getSelected');
	$('#dict_id').val(row.id);
}
</script>