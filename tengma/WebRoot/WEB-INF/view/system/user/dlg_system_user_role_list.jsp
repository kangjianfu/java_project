<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-system-user-role-list" class="easyui-dialog" title="为角色分配菜单权限" style="width:720px;height:460px;" closed="true"
       data-options="
       resizable:true,
       modal:true,
       buttons:[{
			text:'选择',
			iconCls:'icon-ok',
			handler:function(){chooseSystemUserRole()}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){closeSystemUserRoleChooseDialog()}
		}]
 "> 
<table id="dg-system-user-role-list"></table> 
</div>
<script type="text/javascript">
function chooseSystemUserRole(){
	var row=$("#dg-system-user-list").datagrid('getSelected');
	var rows=$("#dg-system-user-role-list").datagrid('getChecked');
	if(rows.length==0){
		$.messager.alert('系统提示','请选择一个要分配的角色!');
		return false;
	}
	var strIds=[];
	$.each(rows, function(index,item){
		strIds.push(item.id);
	})
	var ids = strIds.join(",");
	$.messager.progress({title:'系统消息',msg:'数据处理中...'});
	$.post("system/user/roleAssign",{userId:row.id,roleIds:ids},function(result){
		$.messager.progress('close');
		if(result.flag==true){
			$.messager.alert('系统提示',result.Msg,'info');
		}else{
			$.messager.alert('系统提示',result.Msg);
		}
		closeSystemUserRoleChooseDialog();
	},"json");
}
function closeSystemUserRoleChooseDialog(){
	$("#dlg-system-user-role-list").dialog("close");
}
</script>