<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg1" class="easyui-dialog" title="更改菜单层级" style="width:660px;height:460px;" closed="true"
       data-options="
       resizable:true,
       modal:true,
       buttons:[{
			text:'保存',
			iconCls:'icon-ok',
			handler:function(){saveMenuChooseDialog()}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){closeMenuChooseDialog()}
		}]
 "> 
<form id="fm1" method="post">
 	<input type="hidden" id="menuid" name="menuid"/>
 	<input type="hidden" id="parentid" name="parentid"/>
	  <table id="treeGrid1" class="easyui-treegrid"
			data-options="
				url: 'menu/list',
				method: 'get',
				idField: 'id',
				treeField: 'name',
			    rownumbers:true,
				collapseAll:3
			">
		<thead>
			<tr>
				<th data-options="field:'id',width:80">ID</th>
				<th data-options="field:'name',width:300">菜单名称</th>
				<th data-options="field:'description',width:200,align:'right'">描述</th>
			</tr>
		</thead>
	</table>
</form>
</div>