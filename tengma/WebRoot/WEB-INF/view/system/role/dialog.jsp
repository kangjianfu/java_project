<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg" class="easyui-dialog" title="添加、修改用户" style="width:570px;height:300px;"
       data-options="
       url:'',
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
 	<table cellspacing="5px;">
 		<input type="hidden" id="id" name="id" />
 		<tr>
 			<td>角色分组：</td>
 			<td><select id="groupname" name="groupname" class="easyui-combobox" style="width:200px;">   
				    <option value="管理组">管理组</option>   
				    <option value="用户组">用户组</option>
				</select>
			</td>
		</tr>
		<tr>
 			<td>角色名称：</td>
 			<td><input id="name" name="name" class="easyui-textbox" data-options="required:true" style="width:200px;"/></td>
 		</tr>
 		<tr>
 			<td>排序：</td>
 			<td><input id="order_id" name="order_id" value="1" class="easyui-textbox" data-options="required:true" style="width:200px;"/></td>
 		</tr>
 		<tr>
  			<td valign="top">角色描述：</td>
  			<td colspan="3">
  			<textarea rows="7" cols="54" id="description" name="description" required="true"></textarea>
  			</td>
  		</tr>
 	</table>
 </form>
</div>