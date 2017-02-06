<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="dg-system-user-list" class="easyui-datagrid"    
data-options="
	url:'system/user/list',
	pagination:true,  //分页 
	rownumbers:true,
	fit:true, 
    fitColumns:true,
    singleSelect:true,
    remoteSort:false, //本地排序
    sortName:'order_id', //默认排序的字段
    toolbar:'#tb-system-user-list'
">    
    <thead>   
        <tr>
            <th data-options="field:'dept_name',title:'部门名称',width:200"></th> 
            <th data-options="field:'username',title:'登陆账号',width:70"></th>   
            <th data-options="field:'nickname',title:'用户名称',width:60"></th>   
            <th data-options="field:'zuoji',title:'座机',width:80"></th>   
            <th data-options="field:'shouji',title:'手机',width:80"></th>  
            <th data-options="field:'duanhao',title:'短号',width:80"></th>  
            <th data-options="field:'bmzyfzrmc',title:'部门负责人',width:60"></th>  
            <th data-options="field:'ryztmc',title:'人员状态',width:60"></th>  
            <th data-options="field:'qtbzmc',title:'启停标志',width:60,formatter:systemUserQT"></th>  
            <th data-options="field:'tysjq',title:'停用时间起',width:60"></th>  
            <th data-options="field:'tysjz',title:'停用时间止',width:60"></th>  
            <th data-options="field:'order_id',title:'排序',width:40,sortable:true"></th>   
        </tr>   
    </thead>  
</table> 
<div id="tb-system-user-list">
	<a href="javascript:void(0);" onClick="Easyui_OpenDialog('dlg-system-user-save');" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
	<a href="javascript:void(0);" onClick="Easyui_EditDialog('dg-system-user-list','dlg-system-user-save','fm-system-user-save');" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
	<a href="javascript:void(0);" onClick="Easyui_Delete('dg-system-user-list','system/user/delete','id');" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
	<a href="javascript:void(0);" onClick="resetPassword();" class="easyui-linkbutton" iconCls="icon-reload" plain="true">重置密码</a>
	<a href="javascript:void(0);" onClick="openSystemUserRoleChooseDialog();" class="easyui-linkbutton" iconCls="icon-wrench" plain="true">为用户分配角色</a>
    <a href="javascript:void(0);" onClick="Easyui_Search('dg-system-user-list','fm-system-user-search');" class="easyui-linkbutton" iconCls="icon-search">搜  索</a>
</div>
<script>
function systemUserQT(value,row,index) {
	return '<a onClick="openSystemUserSaveQtwindow(\''+row.id+'\',\''+row.nickname+'\',\''+row.qtbz_dm+'\',\''+row.tysjq+'\',\''+row.tysjz+'\');" style="color:blue;">'+row.qtbzmc+'</a>';
}
function openSystemUserSaveQtwindow(id,nickname,qtbz_dm,tysjq,tysjz) {
	if(!id=="") {
		var row = new Object();
		row.id = id;
		row.nickname = nickname;
		row.qtbz_dm = qtbz_dm;
		if(!tysjq==null) {
			row.tysjq = getDate(tysjq);
		}
		if(!tysjz==null) {
			row.tysjz = getDate(tysjz);
		}
		//$('#dlg-system-user-save-qt').dialog('refresh');
		$('#fm-system-user-save-qt').form("load",row);
		$('#dlg-system-user-save-qt').dialog("open");
		if(qtbz_dm=='Y') {
			$('#tysjq').datebox({disabled:true});
		    $('#tysjz').datebox({disabled:true});
		} else {
			$('#tysjq').datebox({disabled:false});
		    $('#tysjz').datebox({disabled:false});
		    $('#tysjq').datebox('setValue',getDate(tysjq));
			$('#tysjz').datebox('setValue',getDate(tysjz));
		}
		
		

	}
}
//账号停用
function systemUserQt(id,i) {
	var rows=$('#dg-system-user-list').datagrid('getRows');
	var qtbz_dm = 'Y';
	var qtbzmc = '启用' ;
	if(rows[i].qtbz_dm=='Y') {
		qtbz_dm = 'N';
		qtbzmc = '停用';
	} 
	$.ajax({
		url:'system/user/qt',
		data:{id:rows[i].id,qtbz_dm:qtbz_dm},
		success:function(r) {
			if(r=='true') {
				rows[i].qtbz_dm = qtbz_dm;
				document.getElementById(id).innerHTML = qtbzmc;
				$.messager.show({title:'系统提示',msg:'修改成功！'});
			} else {
				$.messager.show({title:'系统提示',msg:'修改失败！'});
			}
		}
	});
}
//重置密码
function resetPassword(){
	var rows=$("#dg-system-user-list").datagrid('getSelections');
	if(rows.length!=1){
		$.messager.alert('系统提示','请选择一个要重置密码的用户！');
		return;
	}
	var row=rows[0];
	$.messager.confirm('系统消息', '确定要将用户['+row.nickname+']的密码重置吗？', function(r) {
		if(r)
		{
			$.messager.progress({title:'系统消息',msg:'数据处理中...'});
			$.post("system/user/resetpassword",{id:row.id},function(result){
				$.messager.progress('close');
				if(result.flag == true){
					$.messager.alert('系统提示',result.msg,'info');
					$("#dg-system-user-list").datagrid("reload");
				}else{
					$.messager.alert('系统提示',result.msg);
				}
			},"json");
		}
	});
}
function openSystemUserRoleChooseDialog(){
	var row=$("#dg-system-user-list").datagrid('getSelected');
	if(row==null){
		$.messager.alert('系统提示','请选择一个要分配的用户！');
		return false;
	}
	$("#dlg-system-user-role-list").dialog("open").dialog("setTitle","为用户["+row.nickname+"]分配角色");
	$("#dg-system-user-role-list").datagrid({
		url:'system/user/listRole/'+row.id,
		method:'get',
		fit:true,
		fitColumns:true,
		rownumbers:false,
		remoteSort:false,
		sortName:'groupname', //默认排序的字段
	    sortOrder:'desc', //默认的排序规则 ‘asc’、‘desc’
		columns:[[
		     {field:'id',title:'编号',width:40,align:'right',sortable:true},
		     {field:'cb',checkbox:true,width:20,align:'center'},
		     {field:'groupname',title:'角色分组',width:60,sortable:true},
		     {field:'name',title:'角色名称',width:80,sortable:true},
		     {field:'description',title:'角色描述',width:200,sortable:true},
		]],
		singleSelect: false,
		checkOnSelect: true,
		selectOnCheck: true,
		onLoadSuccess:function(data){
			if(data){
				$.each(data.rows,function(index,row){
					if(row.checked){
						$("#dg-system-user-role-list").datagrid('checkRow',index);
					}
				})
			}
		}
	});
}
</script>