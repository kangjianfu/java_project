<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-system-xxsjzd-zddl-save" class="easyui-dialog" title="添加、修改字典大类" style="width:410px;height:200px;"
       data-options="
       resizable:true,
       modal:true,
       closed:true,
       closable:false,
       buttons:[{
			text:'保存',
			iconCls:'icon-ok',
			handler:function(){Easyui_Submit('dg-system-xxsjzd-zddl-list','dlg-system-xxsjzd-zddl-save','fm-system-xxsjzd-zddl-save');}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){Easyui_CloseDialog('dlg-system-xxsjzd-zddl-save','fm-system-xxsjzd-zddl-save');}
		}]
 "> 
 <form id="fm-system-xxsjzd-zddl-save" action="system/xxsjzd/saveZddl" method="post">
 	<input type="hidden" id="id" name="id" />
 	<table style="padding:5px;">
 		<tr>
 			<td>字典编码：</td>
 			<td><input id="bm" name="bm" class="easyui-textbox"  
   				 data-options="required:true" style="width:300px;" /></td>
 		</tr>
 		<tr>
 			<td>字典名称：</td>
 			<td><input id="mc" name="mc" class="easyui-textbox"  
   				 data-options="required:true" style="width:300px;" /></td>
 		</tr>
        <tr>
 			<td>启用标志：</td>
 			<td><select id="qybz" name="qybz" class="easyui-combobox" 
 			data-options="required:true,editable:false" style="width:300px;" >
 				<option value="Y">启用</option>
 				<option value="N">禁用</option>
 			</select></td>
 		</tr>
 		<tr>
 			<td>修改标志：</td>
 			<td><select id="xgbz" name="xgbz" class="easyui-combobox" 
 			data-options="required:true,editable:false" style="width:300px;" >
 				<option value="Y">允许修改</option>
 				<option value="N">禁止修改</option>
 			</select></td>
 		</tr>
 	</table>
 </form>
</div>