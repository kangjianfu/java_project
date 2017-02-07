<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%--公用页面 --%>
<%@ include file="/common/headhome.jsp"%>
</head>
<body class="easyui-layout">
    <!-- 头部 -->
   <div class="wu-header" data-options="region:'north',border:false,split:true">
   	   	<div class="wu-header-left">
       		<h1>内蒙古腾马文化运营支撑系统</h1>
       	</div>
      	<div class="wu-header-right">
       		<p><strong class="easyui-tooltip">${CurrentUser.nickname}</strong>，欢迎您！</p>
         	<p>
         	<a href="#" onclick="openMainUserInformationDialog();">修改个人信息</a>|
         	<a href="#" onclick="openMainUserPasswordDialog();">修改密码</a>|
         	<a href="#" onclick="openMainUserlogout();">安全退出</a></p>
       	</div>
    </div>
   <!-- 头部  结束 -->
   <!-- 左侧导航 -->
   <div data-options="region:'west',split:true,iconCls:'icon-house',title:'导航菜单'" style="width:200px;padding:0px;">
		<div class="easyui-accordion" data-options="fit:true,border:false">
			<c:forEach items="${parentListMenu}" var="item">
				<div title="${item.name}" data-options="iconCls:'${item.iconCls}'" style="padding:5px;">
					<ul class="easyui-tree wu-side-tree" data-options="url:'tree/${item.id}'">
					</ul>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- 左侧导航  结束 -->
	<!--中部-->
    <div class="wu-main" data-options="region:'center'">
        <div id="wu-tabs" class="easyui-tabs" data-options="border:false,fit:true">  
            <div title="首页" style="margin-left:10px;">
				<div class="cs-首页-remark">
					<h1>欢迎使用 内蒙古腾马文化运营支撑系统</h1> <br>
					<br>
					说明：日积月累，每天进步一点点！
				</div>
			</div>
        </div>
    </div>
	<!--中部  结束-->
	<!--尾部-->
	<div class="wu-footer" data-options="region:'south',border:true,split:true">
    	&copy; 亚洲掘金  All Rights Reserved
    </div>
	<!--尾部  结束-->
	<!--右键菜单  -->
	<div id="mm" class="easyui-menu cs-tab-menu">
		<div id="mm-tabupdate">刷新</div>
		<div class="menu-sep"></div>
		<div id="mm-tabclose">关闭当前窗口</div>
		<div id="mm-tabcloseother">关闭其他窗口</div>
		<div id="mm-tabcloseall">关闭全部窗口</div>
		<div id="mm-exit">退出</div>
	</div>
	<!--右键菜单  结束-->
	<!--密码修改对话框  -->
	<div id="dlg-main-user-mmxg" class="easyui-dialog" title="密码修改对话框"
	style="width: 420px;height: 220px;padding: 10px 20px" 
    data-options="iconCls:'icon-group-edit',closed:true,buttons:'#bt-main-user-mmxg'">
	 <form id="fm-main-user-mmxg" method="post">
	 	<table cellspacing="4px;">
	 		<tr>
	 			<td>用户名：</td>
	 			<td>
	 			<input type="hidden" name="main_user_mmxg_id" id="main_user_mmxg_id" value="${CurrentUser.id}">
	 			<input type="text" name="main_user_mmxg_nickname" id="main_user_mmxg_nickname" readonly="readonly" value="${CurrentUser.nickname}" style="width: 200px;" /></td>
	 		</tr>
	 		<tr>
	 			<td>原密码：</td>
	 			<td><input type="password" class="easyui-validatebox" name="main_user_mmxg_oldPassword" id="main_user_mmxg_oldPassword" style="width: 200px;" required="true" /></td>
	 		</tr>
	 		<tr>
	 			<td>新密码：</td>
	 			<td><input type="password" class="easyui-validatebox" name="main_user_mmxg_newPassword" id="main_user_mmxg_newPassword" style="width: 200px;" required="true"  /></td>
	 		</tr>
	 		<tr>
	 			<td>确认新密码：</td>
	 			<td><input type="password" class="easyui-validatebox" name="main_user_mmxg_newPassword2" id="main_user_mmxg_newPassword2" style="width: 200px;" required="true" /></td>
	 		</tr>
	 	</table>
	 </form>
	</div>
	<div id="bt-main-user-mmxg">
		<a href="javascript:modifyMainUserPassword()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
	</div>
	<!--密码修改对话框  结束-->
	<!--个人信息修改对话框  -->
	<div id="dlg-main-user-info" class="easyui-dialog" title="个人信息修改对话框"
	style="width: 400px;height: 300px;padding: 10px 20px" 
    data-options="iconCls:'icon-group-edit',closed:true,buttons:'#bt-main-user-info'">
	 <form id="fm-main-user-info" method="post">
	 	<table cellspacing="4px;">
	 		<tr>
	 			<td>用户名：</td>
	 			<td>
	 			<input type="hidden" name="main_user_info_id" id="main_user_info_id" value="${CurrentUser.id}">
	 			<input class="easyui-textbox" name="main_user_info_nickname" id="main_user_info_nickname" 
	 				value="${CurrentUser.nickname}" style="width: 200px;"
	 				data-options="disabled:true"
	 				 /></td>
	 		</tr>
	 		<tr>
	 			<td>性别</td>
	 			<td><select class="easyui-combobox" name="main_user_info_xb_dm" id="main_user_info_xb_dm" style="width:200px;" data-options="editable:false">   
					    <option value="01" <c:if test='${CurrentUser.xb_dm}=="01"'>selected</c:if>>男</option>   
					    <option value="02" <c:if test='${CurrentUser.xb_dm}=="02"'>selected</c:if>>女</option> 
					</select> </td>
	 		</tr>
	 		<tr>
	 			<td>身份证号码：</td>
	 			<td><input class="easyui-textbox" name="main_user_info_sfzjhm" id="main_user_info_sfzjhm" value="${CurrentUser.sfzjhm}" style="width: 200px;" required="true" /></td>
	 		</tr>
	 		<tr>
	 			<td>出生日期：</td>
	 			<td><input class="easyui-datebox" name="main_user_info_csrq" id="main_user_info_csrq" style="width: 200px;" required="true" 
	 			data-options="formatter:getDate"/></td>
	 			
	 		</tr>
	 		<tr>
	 			<td>座机：</td>
	 			<td><input class="easyui-textbox" name="main_user_info_zuoji" id="main_user_info_zuoji" value="${CurrentUser.zuoji}" style="width: 200px;" required="true" /></td>
	 		</tr>
	 		<tr>
	 			<td>手机：</td>
	 			<td><input class="easyui-textbox" name="main_user_info_shouji" id="main_user_info_shouji"  value="${CurrentUser.shouji}" style="width: 200px;" required="true" /></td>
	 		</tr>
	 		<tr>
	 			<td>短号：</td>
	 			<td><input class="easyui-textbox" name="main_user_info_duanhao" id="main_user_info_duanhao" value="${CurrentUser.duanhao}" style="width: 200px;" required="true"  /></td>
	 		</tr>
	 	</table>
	 </form>
	</div>
	<div id="bt-main-user-info">
		<a href="javascript:modifyMainUserInformation()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
	</div>
	<!--个人信息修改对话框  结束-->
<script type="text/javascript">          
//页面加载  
$(function() {   
	//getDate(dateStr) 来源于 js/system/util.js
    $("#main_user_info_csrq").datebox("setValue",getDate('${CurrentUser.csrq}')); 
});  
function openMainUserPasswordDialog(){
	$("#dlg-main-user-mmxg").dialog("open").dialog("setTitle","密码修改对话框");
}
function openMainUserInformationDialog(){
	$("#dlg-main-user-info").dialog("open").dialog("setTitle","个人信息修改对话框");
}
function openMainUserlogout(){
	$.messager.confirm('系统提示','您确定要退出系统吗？',function(r){
	if(r){
		window.location.href="logout";
	}
	})
}
function modifyMainUserPassword(){
	$('#fm-main-user-mmxg').form('submit',{
	url:'pwdUp',
	onSubmit:function(){
		var oldPassword=$("#main_user_mmxg_oldPassword").val();
		var newPassword=$("#main_user_mmxg_newPassword").val();
		var newPassword2=$("#main_user_mmxg_newPassword2").val();
		if(newPassword!=newPassword2){
			$.messager.alert('系统提示','新密码输入错误！');
			return false;
		}
		return true;
	},
	success:function(result){
		var result=eval('('+result+')');
		if(result.flag){
			$.messager.alert('系统提示','密码修改成功，下一次登录生效！');
			closeMainUserPasswordModifyDialog();
		}else{
			$.messager.alert('系统提示',result.errorMsg);
			return;
		}
	}
	});
}
function modifyMainUserInformation(){
	if(!isPhone($('#main_user_info_zuoji').textbox('getValue'))) {
		$.messager.alert('系统提示','座机号码的格式不正确,正确的格式为：(0XXX-XXXXXXXX)');
		return;
	}
	if(!isMobile($('#main_user_info_shouji').textbox('getValue'))) {
		$.messager.alert('系统提示','手机号码的格式不正确,请输入11位数字的手机号码！');
		return;
	}
	if(!isDh($('#main_user_info_duanhao').textbox('getValue'))) {
		$.messager.alert('系统提示','短号的格式不正确，请输入6位数字的短号！');
		return;
	}
	$('#fm-main-user-info').form('submit',{
	url:'Information',
	onSubmit:function(){
		var zuoji=$("#main_user_info_zuoji").val();
		var duanhao=$("#main_user_info_duanhao").val();
		var shouji=$("#main_user_info_shouji").val();
		return true;
	},
	success:function(result){
		var result=eval('('+result+')');
		if(result.flag){
			$.messager.alert('系统提示','您的个人信息修改成功！');
			closeMainUserInformationDialog();
		}else{
			$.messager.alert('系统提示',result.errorMsg);
			return;
		}
	}
	});
}

function closeMainUserPasswordModifyDialog(){
	$("#main_user_oldPassword").val("");
	$("#main_user_newPassword").val("");
	$("#main_user_newPassword2").val("");
	$("#dlg-main-user-mmxg").dialog("close");
	//var tab = $('#tabs').tabs('getSelected');
	//var index = $('#tabs').tabs('getTabIndex',tab);
	//$('#tabs').tabs('close',index);
}
function closeMainUserInformationDialog(){
	$("#dlg-main-user-info").dialog("close");
}
</script>
</body>
</html>