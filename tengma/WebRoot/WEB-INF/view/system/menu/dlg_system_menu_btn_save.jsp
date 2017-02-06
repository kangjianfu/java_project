<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-system-menu-btn-save" class="easyui-dialog" title="添加、修改字典大类" style="width:670px;height:240px;"
       data-options="
       resizable:true,
       modal:true,
       closed:true,
       closable:false,
       buttons:[{
			text:'保存',
			iconCls:'icon-ok',
			handler:function(){Easyui_Submit('dg-system-menu-btn-list','dlg-system-menu-btn-save','fm-system-menu-btn-save');}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){Easyui_CloseDialog('dlg-system-menu-btn-save','fm-system-menu-btn-save');}
		}]
 "> 
 <form id="fm-system-menu-btn-save" action="menu/saveBtn" method="post">
 	<input type="hidden" id="id" name="id" />
 	<input type="hidden" id="menu_id" name="menu_id" />
 	<table style="padding:10px;">
 		<tr>
 			<td>按钮名称：</td>
 			<td><input id="btn_name" name="btn_name" class="easyui-combobox" style="width:560px;"
   				 data-options="valueField:'bm',textField:'mc',url:'../core/listXxDict/ANMC',required:true,editable:false" /></td>
 		</tr>
 		<tr>
 			<td>按钮图标：</td>
 			<td><input id="btn_icon" name="btn_icon" class="easyui-combobox" style="width:560px;"
   				 data-options="valueField:'bm',textField:'bm',url:'../core/listXxDict/ANTB',required:true" /></td>
 		</tr>
 		<tr>
 			<td>按钮方法：</td>
 			<td><input id="btn_method" name="btn_method" class="easyui-combobox" style="width:560px;"
   				 data-options="valueField:'bm',textField:'bm',url:'../core/listXxDict/ANFF',required:true" /></td>
 		</tr>
 		 <tr>
 			<td>排序：</td>
 			<td><input id="order_id" name="order_id" class="easyui-textbox"  
   				 data-options="required:true" style="width:560px;" /></td>
 		</tr>
 	</table>
 </form>
</div>