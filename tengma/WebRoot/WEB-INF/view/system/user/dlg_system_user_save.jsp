<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-system-user-save" class="easyui-dialog" title="添加/修改用户信息" style="width:570px;height:300px;"
       data-options="
       resizable:true,
       modal:true,
       closed:true,
       closable:false,
       buttons:[{
			text:'保存',
			iconCls:'icon-ok',
			handler:function(){saveSystemUserDialog();}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){Easyui_CloseDialog('dlg-system-user-save','fm-system-user-save');}
		}]
 "> 
 <form id="fm-system-user-save" method="post" action="system/user/save">
 	<table cellspacing="5px;">
 		<input type="hidden" id="id" name="id"/>
 		<input type="hidden" id="dept_id" name="dept_id" />
 		<tr>
 			<td>登陆账号：</td>
 			<td><input id="username" name="username" class="easyui-textbox" required="true"/></td>
 			<td>用户名称：</td>
 			<td><input id="nickname" name="nickname" class="easyui-textbox" required="true"/></td>
 		</tr>
 		<tr>
 			<td>所在部门：</td>
 			<td colspan="2"><input id="dept_name" name="dept_name" class="easyui-textbox" required="true" readonly="readonly" style="width:100%;" /></td>
 			<td><a href="javascript:openSystemUserDeptChooseDialog()" class="easyui-linkbutton" >选择部门</a></td>
 		</tr>
 		<tr>
 			<td>座机：</td>
 			<td><input id="zuoji" name="zuoji"  class="easyui-textbox" data-options="required:true,validType:'length[6,13]'"/></td>
 			<td>手机：</td>
 			<td><input id="shouji" name="shouji"  class="easyui-textbox" data-options="required:true,validType:'length[6,11]'"/></td>
 		</tr>
        <tr>
 			<td>短号：</td>
 			<td><input id="duanhao" name="duanhao"  class="easyui-textbox" data-options="required:true,validType:'length[6,6]'"/></td>
 			<td>部门负责人：</td>
 			<td><input id="bmzyfzr" name="bmzyfzr" class="easyui-combobox" required="true"
 				data-options="valueField:'bm',textField:'mc',url:'core/listXxDict/SF',editable:false" />
 			</td>
 		</tr>
 		<tr>
 		 	<td>人员状态：</td>
 			<td><input id="ryzt_dm" name="ryzt_dm" class="easyui-combobox" required="true"
 				data-options="valueField:'bm',textField:'mc',url:'core/listXxDict/RYZT',editable:false" />
 			</td>
 		    <td>排序：</td>
 			<td><input type="text" id="order_id" name="order_id"  class="easyui-validatebox" data-options="required:true,validType:'length[1,6]'"/></td>
 		</tr>
 	</table>
 </form>
</div>
<script>
function saveSystemUserDialog() {
	if(!isPhone($('#zuoji').textbox('getValue'))) {
		$.messager.alert('系统提示','座机号码的格式不正确,正确的格式为：(0XXX-XXXXXXXX)');
		return;
	}
	if(!isMobile($('#shouji').textbox('getValue'))) {
		$.messager.alert('系统提示','手机号码的格式不正确，请输入11位数字的手机号码！');
		return;
	}
	if(!isDh($('#duanhao').textbox('getValue'))) {
		$.messager.alert('系统提示','短号的格式不正确，请输入6位数字的短号！');
		return;
	}
	Easyui_Submit('dg-system-user-list','dlg-system-user-save','fm-system-user-save');
}
function openSystemUserDeptChooseDialog() {
	$("#dlg-system-user-dept-list").dialog("open").dialog("setTitle","选择用户["+$("#nickname").val()+"]所在的部门");
}
</script>