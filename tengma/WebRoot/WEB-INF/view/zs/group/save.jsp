<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-zs-group-save" class="easyui-dialog" title="添加/编辑知识分类" style="width:400px;height:200px;"
       data-options="
       resizable:true,
       modal:true,
       closed:true,
       closable:false,
       buttons:[{
			text:'保存',
			iconCls:'icon-ok',
			handler:function(){Easyui_Submit('tg-zs-group-list','dlg-zs-group-save','fm-zs-group-save')}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){Easyui_CloseDialog('dlg-zs-group-save','fm-zs-group-save');}
		}]
 "> 
 <form id="fm-zs-group-save" action="zs/save" method="post">
 	<br/><input type="hidden" id="id" name="id" />
 	<table>
 	 	<tr>
 			<td>知识层级：</td>
 			<td><input id="parent_id" name="parent_id" class="easyui-combobox"    
		    data-options="valueField:'parent_id',textField:'name',url:'zs/listGroupLevel1',editable:false" /></td>
 		</tr>
 		<tr>
 			<td>分类名称：</td>
 			<td><input type="text" id="name" name="name" class="easyui-textbox" /></td>
 		</tr>
 		<tr>
 			<td>排序：</td>
 			<td><input type="text" id="order_id" name="order_id" value="99" class="easyui-textbox" /></td>
 		</tr>
 	</table>
 </form>
</div>