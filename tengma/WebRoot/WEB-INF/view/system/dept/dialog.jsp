<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-system-dept-save"  class="easyui-dialog" style="width:430px;height:220px;"
       data-options="
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
	  <form id="fm-system-dept-save" name="fm-system-dept-save" method="post" action="dept/add">
	  	<table cellspacing="5px;">
	  		<input type="hidden" id="parent_id" name="parent_id" />
	  		<tr>
	  			<td>部门ID:</td>
	  			<td><input id="id" name="id" class="easyui-textbox" required="true" style="width:300px;"/></td>
	  		</tr>
	  		<tr>
	  			<td>部门名称：</td>
	  			<td><input id="name" name="name" value="" class="easyui-textbox" required="true" style="width:300px;"/></td>
	  		</tr>
	  		<tr>
	  			<td>部门全称：</td>
	  			<td><input id="fullname" name="fullname"  class="easyui-textbox" required="true" style="width:300px;"/></td>
	  		</tr>
	  		<tr>
	  			<td>排序：</td>
	  			<td><input id="order_id" name="order_id" value="0"  class="easyui-textbox" required="true" style="width:300px;"/></td>
	  		</tr>
	  	</table>
	  </form>
</div>