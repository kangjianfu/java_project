<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="dg-system-xxsjzd-zddl-list" class="easyui-datagrid" 
data-options="
	url:'system/xxsjzd/listZddl',
	pagination:true,  //分页 
    fitColumns:true,
    singleSelect:true,
    rownumbers:true,
    pageSize:20,
    onClickRow: function(index,row){
		$('#dg-system-xxsjzd-zdxl-list').datagrid({
			url:'system/xxsjzd/listZdxl/'+row.id
		});
		if(row.xgbz=='N') {
			$('#tb-system-xxsjzd-zddl-add').linkbutton({
				disabled:true
			});
			$('#tb-system-xxsjzd-zddl-edit').linkbutton({
				disabled:true
			});
			$('#tb-system-xxsjzd-zddl-delete').linkbutton({
				disabled:true
			});
			$('#tb-system-xxsjzd-zdxl-add').linkbutton({
				disabled:true
			});
			$('#tb-system-xxsjzd-zdxl-edit').linkbutton({
				disabled:true
			});
			$('#tb-system-xxsjzd-zdxl-delete').linkbutton({
				disabled:true
			});
		} else {
			$('#tb-system-xxsjzd-zddl-add').linkbutton({
				disabled:false
			});
			$('#tb-system-xxsjzd-zddl-edit').linkbutton({
				disabled:false
			});
			$('#tb-system-xxsjzd-zddl-delete').linkbutton({
				disabled:false
			});
			$('#tb-system-xxsjzd-zdxl-add').linkbutton({
				disabled:false
			});
			$('#tb-system-xxsjzd-zdxl-edit').linkbutton({
				disabled:false
			});
			$('#tb-system-xxsjzd-zdxl-delete').linkbutton({
				disabled:false
			});
		}
		
	},
    toolbar:'#tb-system-xxsjzd-zddl'
">    
    <thead>   
        <tr> 
            <th data-options="field:'bm',title:'字典编码',width:50"></th>   
            <th data-options="field:'mc',title:'字典名称',width:120"></th>   
            <th data-options="field:'qybzmc',title:'启用标志',width:34"></th>
            <th data-options="field:'xgbzmc',title:'修改标志',width:40,styler:cellStyler"></th>
        </tr>   
    </thead>  
</table>
<div id="tb-system-xxsjzd-zddl" style="padding:2px 5px;display: none;">
	<a id="tb-system-xxsjzd-zddl-add" href="javascript:void(0);" onClick="Easyui_OpenDialog('dlg-system-xxsjzd-zddl-save')" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
	<a id="tb-system-xxsjzd-zddl-edit" href="javascript:void(0);" onClick="Easyui_EditDialog('dg-system-xxsjzd-zddl-list','dlg-system-xxsjzd-zddl-save','fm-system-xxsjzd-zddl-save')" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
	<a id="tb-system-xxsjzd-zddl-delete" href="javascript:void(0);" onClick="Easyui_Delete('dg-system-xxsjzd-zddl-list','system/xxsjzd/deleteZddl','id')" class="easyui-linkbutton" iconCls="icon-delete" plain="true">删除</a>
</div>
<script type="text/javascript">
//单元格样式
function cellStyler(value,row,index){
	if(value=='禁止修改') {
		return 'color:red;';
	}
}
</script>