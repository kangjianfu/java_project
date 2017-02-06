<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="tg-system-cjsjzd-list" class="easyui-treegrid" 
data-options="
	url:'system/cjsjzd/list',
	fit:true,
    fitColumns:false,
    rownumbers:true,
    idField:'id',
    treeField:'mc',
    onClickRow:function(row){
		if(row.xgbz=='N') {
			$('#tb-system-cjsjzd-add').linkbutton({
				disabled:true
			});
			$('#tb-system-cjsjzd-edit').linkbutton({
				disabled:true
			});
			$('#tb-system-cjsjzd-delete').linkbutton({
				disabled:true
			});
		} else {
			$('#tb-system-cjsjzd-add').linkbutton({
				disabled:false
			});
			$('#tb-system-cjsjzd-edit').linkbutton({
				disabled:false
			});
			$('#tb-system-cjsjzd-delete').linkbutton({
				disabled:false
			});
		}
	},
    toolbar:'#tb-system-cjsjzd'
">    
    <thead>   
        <tr> 
            <th data-options="field:'bm',title:'字典编码',width:80"></th>   
            <th data-options="field:'mc',title:'字典名称',width:300"></th> 
            <th data-options="field:'order_id',title:'排序',width:40"></th> 
            <th data-options="field:'qybzmc',title:'启用标志',width:80"></th> 
            <th data-options="field:'xgbzmc',title:'修改标志',width:80,styler:cellStyler"></th> 
        </tr>   
    </thead>  
</table> 
<div id="tb-system-cjsjzd" style="padding:2px 5px;display: none;">
	<a id="tb-system-cjsjzd-add" href="javascript:void(0);" onClick="addSystemCjsjzd()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
	<a id="tb-system-cjsjzd-edit" href="javascript:void(0);" onClick="Easyui_EditDialog('tg-system-cjsjzd-list','dlg-system-cjsjzd-save','fm-system-cjsjzd-save')" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
	<a id="tb-system-cjsjzd-delete" href="javascript:void(0);" onClick="Easyui_Delete('tg-system-cjsjzd-list','system/cjsjzd/deleteCjsjzd','id')" class="easyui-linkbutton" iconCls="icon-delete" plain="true">删除</a>
</div>
<script type="text/javascript">
function addSystemCjsjzd() {
	var row=$("#tg-system-cjsjzd-list").treegrid('getSelected');
	if(row==null) {
		$.messager.alert('系统提示','请先选择一行字典数据！');
		return;
	}
	$("#parent_id").val(row.id);
	Easyui_OpenDialog('dlg-system-cjsjzd-save');
	$("#id").val("");
}
//单元格样式
function cellStyler(value,row,index){
	if(value=='禁止修改') {
		return 'color:red;';
	}
}
</script>