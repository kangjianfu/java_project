<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-zs-content-save" class="easyui-dialog" title="添加/编辑知识" style="width:560px;height:400px;"
       data-options="
       resizable:true,
       modal:true,
       closed:true,
       closable:false,
       buttons:[{
			text:'保存',
			iconCls:'icon-ok',
			handler:function(){Easyui_Submit('dg-zs-content-list','dlg-zs-content-save','fm-zs-content-save')}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){Easyui_CloseDialog('dlg-zs-content-save','fm-zs-content-save');}
		}]
 "> 
 <form id="fm-zs-content-save" action="zs/saveContent" method="post">
 	<br/><input type="hidden" id="id" name="id" />
 	<table>
 	 	<tr>
 			<td>知识分类：</td>
 			<td><input id="group_id" name="group_id" class="easyui-combobox" style="width:400px;"  
		    data-options="valueField:'group_id',textField:'name',url:'zs/listGroupLevel2',editable:false" /></td>
 		</tr>
 		<tr>
 			<td>问题：</td>
 			<td><input id="question" name="question" class="easyui-textbox" data-options="multiline:true,required:true" style="width:400px;height:100px;"/></td>
 		</tr>
 		<tr>
 			<td>答案：</td>
 			<td><input id="answer" name="answer" class="easyui-textbox" data-options="multiline:true,required:true" style="width:400px;height:100px;" /></td>
 		</tr>
 		<tr>
 			<td>难易程度：</td>
 			<td><input id="level" name="level" class="easyui-combobox" style="width:400px;"  
		    data-options="valueField:'bm',textField:'mc',url:'core/listXxDict/NYCD',editable:false" /></td>
 		</tr>
 		<tr>
 			<td>分享类型：</td>
 			<td><input id="share" name="share" class="easyui-combobox" style="width:400px;"  
		    data-options="valueField:'bm',textField:'mc',url:'core/listXxDict/FXLX',editable:false" />
			</td>
 		</tr>
 	</table>
 </form>
</div>