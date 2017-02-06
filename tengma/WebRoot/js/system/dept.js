function openAddDialog(){
	var row=$("#tg-system-dept-list").treegrid('getSelected');
	if(row==null){
		$.messager.alert('系统提示','请选择一个父菜单节点！');
		return;
	}
	$("#dlg-system-dept-save").dialog("open").dialog("setTitle","添加部门信息");
	$("#parent_id").val(row.id);
	url="dept/add";
}
function openEditDialog(){
	var row=$("#tg-system-dept-list").treegrid('getSelected');
	if(row==null){
		$.messager.alert('系统提示','请选择一个要编辑的部门！');
		return;
	}
	$("#dlg-system-dept-save").dialog("open").dialog("setTitle","修改部门信息");
	$("#fm-system-dept-save").form("load",row);
	url="dept/edit";
}
function openDeleteDialog(){
	var row=$("#tg-system-dept-list").treegrid('getSelected');
	if(row==null){
		$.messager.alert('系统提示','请选择一个要删除的部门！');
		return false;
	}
	$.messager.confirm('系统提示','您确定要删除该部门吗？',function(r){
		if(r){
			$.messager.progress({title:'系统消息',msg:'数据处理中...'});
			$.post("dept/delete",{id:$.trim(row.id)},function(result){
				$.messager.progress('close');
				if(result.flag == true){
					$.messager.alert('系统提示',result.msg,'info');
					$("#tg-system-dept-list").treegrid("reload");
				}else{
					$.messager.alert('系统提示',result.msg);
				}
			},"json");
		}
	});
}

function saveDialog(){
	if($("#id").textbox('getValue').substring(0,3)=='152' && $("#id").textbox('getValue').length==11 ) {
		$('#fm-system-dept-save').form({    
		    url:url,    
		    onSubmit: function(){    
		    	//return $(this).form("validate");    
		    },    
		    success:function(result){    
				var result=eval('('+result+')');
				if(!result.flag){
					$.messager.show({title:'错误提示',msg:result.msg,timeout:2000,showType:'slide'});
					return;
				}else{
					$.messager.show({title:'成功提示',msg:result.msg,timeout:1000,showType:'slide'});
					closeDialog();
					$("#tg-system-dept-list").treegrid("reload");
				}   
		    }    
		});   
		$('#fm-system-dept-save').submit();  
	} else {
		$.messager.show({title:'错误提示',msg:'部门ID必须以152开头,长度为11位数字！',timeout:2000,showType:'slide'});
	}
}
function closeDialog(){
	$("#dlg-system-dept-save").dialog("close");
	$("#fm-system-dept-save").form('clear');
	//document.forms['fm-system-dept-save'].elements[8].textbox('readonly','false');
}
function openDeptChooseDialog(){
	var row=$("#tg-system-dept-list").treegrid('getSelected');
	if(row==null){
		$.messager.alert('系统提示','请选择一个要修改的部门！');
		return;
	}
	$("#deptid").val(row.id);
	$("#dlg-system-dept-save1").dialog("open").dialog("setTitle","修改部门["+row.name+"]所属的部门层级");
	$("#tg-system-dept-list1").treegrid('collapseAll');
	url="dept/upparentid/";
}
function saveDeptChooseDialog(){
	var row=$("#tg-system-dept-list1").treegrid('getSelected');
	if(row==null){
		$.messager.alert('系统提示','必须选择一个部门层级！');
		return;
	}
	$("#parentid").val(row.id);
	$('#fm-system-dept-save1').form({    
	    url:url,   
	    success:function(result){    
			var result=eval('('+result+')');
			if(!result.flag){
				$.messager.show({title:'错误提示',msg:result.msg,timeout:2000,showType:'slide'});
				return;
			}else{
				$.messager.show({title:'成功提示',msg:result.msg,timeout:1000,showType:'slide'});
				closeDeptChooseDialog();
				$("#tg-system-dept-list").treegrid("reload");
			}   
	    }    
	});   
	$('#fm-system-dept-save1').submit();  
}
function closeDeptChooseDialog(){
	$("#dlg-system-dept-save1").dialog("close");
	$("#fm-system-dept-save1").form('clear');
}