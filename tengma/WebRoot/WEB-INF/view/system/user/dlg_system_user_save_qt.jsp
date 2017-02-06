<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-system-user-save-qt" class="easyui-dialog" title="账号启用/停用对话框"
	style="width:400px;height:230px;padding: 10px 20px" 
    data-options="
	    iconCls:'icon-group-edit',
	    closed:true,
	    closable:false,
	    modal: true,
	    buttons:'#bt-system-user-save-qt'

    ">
	 <form id="fm-system-user-save-qt" method="post" action="system/user/saveQt">
	 	<table cellspacing="4px;">
	 		<tr>
	 			<td>用户名：</td>
	 			<td>
	 			<input type="hidden" name="id" id="id" />
	 			<input class="easyui-textbox" name="nickname" id="nickname" style="width: 200px;"
	 				data-options="disabled:true"/></td>
	 		</tr>
	 		<tr>
	 			<td>启停标志</td>
	 			<td><input id="qtbz_dm" name="qtbz_dm" class="easyui-combobox"   
                    data-options="
                    	valueField:'bm',
                    	textField:'mc',
                    	url:'core/listXxDict/QTBZ',
                    	editable:false,
	 			   	    onSelect:function(record){
	 			    		if(record.bm=='Y'){
	 			    			$('#tysjq').datebox({disabled:true});
	 			    			$('#tysjz').datebox({disabled:true});
	 			    		}else{
	 			    			$('#tysjq').datebox({disabled:false});
	 			    			$('#tysjz').datebox({disabled:false});
	 			    		}
	 			    		return;
	 			    	}
	 			     " /> 
	 			</td>
	 		</tr>
	 		<tr>
	 			<td>停用时间起：</td>
	 			<td><input class="easyui-datebox" name="tysjq" id="tysjq" style="width: 200px;" data-options="required:true,editable:false" /></td>
	 		</tr>
	 		<tr>
	 			<td>停用时间止：</td>
	 			<td><input class="easyui-datebox" name="tysjz" id="tysjz" style="width: 200px;" data-options="required:true,editable:false" /></td>
	 		</tr>
	 	</table>
	 </form>
	</div>
<div id="bt-system-user-save-qt">
	<a href="javascript:modifySystemUserQtbz();" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
	<a href="javascript:Easyui_CloseDialog('dlg-system-user-save-qt','fm-system-user-save-qt');" class="easyui-linkbutton" iconCls="icon-cancle">关闭</a>
</div>
<script type="text/javascript">
function modifySystemUserQtbz() {
	if($('#qtbz_dm').combobox('getValue')=='N'){
		if($('#tysjq').datebox('getValue')=='' || $('#tysjz').datebox('getValue')==''){
			$.messager.alert('系统提示','停用时间起和停用时间止不能为空！');
			return;
		}
	} else {
		$('#tysjq').datebox('setValue','');
		$('#tysjz').datebox('setValue','');
	}
	Easyui_Submit('dg-system-user-list','dlg-system-user-save-qt','fm-system-user-save-qt');	
}
</script>
