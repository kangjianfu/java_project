<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-system-xxsjzd-zdxl-save" class="easyui-dialog" title="添加、修改字典细类" style="width:430px;height:260px;"
       data-options="
       resizable:true,
       modal:true,
       closed:true,
       closable:false,
       buttons:[{
			text:'保存',
			iconCls:'icon-ok',
			handler:function(){Easyui_Submit('dg-system-xxsjzd-zdxl-list','dlg-system-xxsjzd-zdxl-save','fm-system-xxsjzd-zdxl-save');}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){Easyui_CloseDialog('dlg-system-xxsjzd-zdxl-save','fm-system-xxsjzd-zdxl-save');}
		}]
 "> 
 <form id="fm-system-xxsjzd-zdxl-save" action="system/xxsjzd/saveZdxl" method="post">
 	<table cellspacing="5px;">
 		<input type="hidden" id="id" name="id" />
 		<input type="hidden" id="dict_id" name="dict_id" />
 		<tr>
 			<td>字典细类编码：</td>
 			<td><input id="bm" name="bm" class="easyui-textbox"  
   				 data-options="required:true" style="width:300px;" /></td>
 		</tr>
 		<tr>
 			<td>字典细类名称：</td>
 			<td><input id="mc" name="mc" class="easyui-textbox"  
   				 data-options="required:true" style="width:300px;" /></td>
 		</tr>
 		<tr>
 			<td>排序：</td>
 			<td><input id="order_id" name="order_id" class="easyui-textbox"  
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