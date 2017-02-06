<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg" class="easyui-dialog" title="添加、修改菜单" style="width:640px;height:360px;"
       data-options="
       url:'menu/add',
       resizable:true,
       modal:true,
       closed:true,
       buttons:[{
			text:'保存',
			iconCls:'icon-ok',
			handler:function(){saveDialog()}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){closeDialog()}
		}]
 "> 
 <form id="fm" method="post">
 	<input type="hidden" id="id" name="id"/>
 	<input type="hidden" id="parent_id" name="parent_id" />
 	<table style="padding:5px;">
 		<tr>
 			<td>菜单名称：</td>
 			<td><input id="name" name="name" value="" class="easyui-textbox" data-options="required:true" style="width:260px;"/></td>
 			<td>图标：</td>
 			<td><input id="iconCls" name="iconCls" value="icon-hamburg-old-versions" class="easyui-textbox" data-options="required:true" style="width:180px;"/></td>
 		</tr>
 		<tr>
 			<td>url：</td>
 			<td><input id="url" name="url"  class="easyui-textbox" data-options="required:true" style="width:260px;"/></td>
 			<td>排序：</td>
 			<td><input id="order_id" name="order_id" value="0" class="easyui-textbox" data-options="required:true" style="width:180px;"/></td>
 		</tr>
 		<tr>
 			<td valign="top">菜单描述：</td>
 			<td colspan="3">
 			<input id="description" name="description" class="easyui-textbox" data-options="required:true,multiline:true" style="width:100%;height:200px;"/>
 			</td>
 		</tr>
 	</table>
 </form>
</div>