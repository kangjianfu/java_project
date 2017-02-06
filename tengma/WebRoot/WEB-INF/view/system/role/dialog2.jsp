<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="dlg2" class="easyui-dialog" title="为角色分配菜单权限" style="width:640px;height:460px;" closed="true"
       data-options="
       resizable:true,
       modal:true,
       buttons:[{
			text:'选择',
			iconCls:'icon-ok',
			handler:function(){ChooseUser()}
		},{
			text:'关闭',
			iconCls:'icon-cancel',
			handler:function(){closeUserChooseDialog()}
		}]
 "> 
<table id="dataGrid2"></table> 
</div>