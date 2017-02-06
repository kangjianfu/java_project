<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg-system-dept-save1" class="easyui-dialog" title="更改部门层级" closed="true" style="width:660px;height:460px;" 
       data-options="
       resizable:true,
       modal:true,
       buttons:[{
			text:'保存',
			iconCls:'icon-ok',
			handler:function(){saveDeptChooseDialog()}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){closeDeptChooseDialog()}
		}]
 "> 
 <form id="fm-system-dept-save1" method="post">
 	<input type="hidden" id="deptid" name="deptid"/>
 	<input type="hidden" id="parentid" name="parentid"/>
	  <table id="tg-system-dept-list1" class="easyui-treegrid"
			data-options="
				url: 'dept/list',
				method: 'get',
				rownumbers: true,
				idField: 'id',
				treeField: 'name',
				collapseAll:3
			">
		<thead>
			<tr>
				<th data-options="field:'id',width:80">ID</th>
				<th data-options="field:'name',width:300">部门名称</th>
				<th data-options="field:'fullname',width:200,align:'right'">部门全称</th>
			</tr>
		</thead>
	</table>
</form>
</div>