<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-system-user-dept-list" class="easyui-dialog" title="选择用户所在的部门" style="width:710px;height:460px;" closed="true"
       data-options="
       resizable:true,
       modal:true,
       buttons:[{
			text:'选择',
			iconCls:'icon-ok',
			handler:function(){ChooseSystemUserDept()}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){closeSystemUserDeptListDialog()}
		}]
 "> 
<table id="tg-system-user-dept-list" class="easyui-treegrid"
	data-options="
		url: 'core/treeCurrentUserDept',
		method: 'get',
		rownumbers: true,
		idField: 'id',
		treeField: 'text'
	">
	<thead>
		<tr>
			<th data-options="field:'id',width:100">ID</th>
			<th data-options="field:'text',width:300">部门简称</th>
			<th data-options="field:'fullname',width:300">部门全称</th>
		</tr>
	</thead>
</table>
</div>
<script>
function ChooseSystemUserDept(){
	var row=$("#tg-system-user-dept-list").treegrid('getSelected');
	if(row==null){
		$.messager.alert('系统提示','必须选择一个部门！');
		return;
	}
	if(row.children==null){
	$("#dept_id").val(row.id);
	$("#dept_name").textbox('setValue',row.text);
	closeSystemUserDeptListDialog();
	} else {
		$.messager.alert('系统提示','<font color="red">'+row.name+'</font>不是人员所在的部门，请选择人员所在的部门！');
		return;
	}
}
function closeSystemUserDeptListDialog(){
	$("#dlg-system-user-dept-list").dialog("close");
}
</script>