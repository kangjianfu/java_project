//AJAX 提交后刷新grid中的数据
function Easyui_Ajax(url, Grid_Id) {
	$.post(url, {}, function(result) {
		result = eval('(' + result + ')');
		if (!result.flag) {
			$.messager.show({
				title : '错误提示',
				msg : result.msg,
				timeout : 2000,
				showType : 'slide'
			});
		} else {
			if (Grid_Id.substr(0, 2) == "dg") {
				$('#' + Grid_Id).datagrid('reload');
			} else {
				$('#' + Grid_Id).treegrid('reload');
			}
			$.messager.show({
				title : '成功提示',
				msg : result.msg,
				timeout : 1000,
				showType : 'slide'
			});
		}
	})
}
// AJAX 选择提交后刷新grid中的数据
function Easyui_Ajax_Checkbox(url, Grid_Id) {
	var rows = $('#' + Grid_Id).datagrid('getSelections');
	if (rows.length == 0) {
		$.messager.show({
			title : '错误提示',
			msg : '至少选择一行记录！',
			timeout : 2000,
			showType : 'slide'
		});
	} else {
		var id_arr = [];
		for (var i = 0; i < rows.length; i++) {
			id_arr.push(rows[i].id);
		}
		ids = id_arr.join(',');
		$.post(url, {
			ids : ids
		}, function(result) {
			result = eval('(' + result + ')');
			if (!result.flag) {
				$.messager.show({
					title : '错误提示',
					msg : result.msg,
					timeout : 2000,
					showType : 'slide'
				});
			} else {
				if (Grid_Id.substr(0, 2) == "dg") {
					$('#' + Grid_Id).datagrid('reload');
				} else {
					$('#' + Grid_Id).treegrid('reload');
				}
				$.messager.show({
					title : '成功提示',
					msg : result.msg,
					timeout : 1000,
					showType : 'slide'
				});
			}
		})

	}
}
// 搜索
function Easyui_Search(Grid_Id, Form_Id) {
	if (Grid_Id.substr(0, 2) == "dg") {
		var queryParams = $('#' + Grid_Id).datagrid('options').queryParams;
	} else {
		var queryParams = $('#' + Grid_Id).treegrid('options').queryParams;
	}
	$.each($('#' + Form_Id).serializeArray(), function() {
		queryParams[this['name']] = this['value'];
	});
	if (Grid_Id.substr(0, 2) == "dg") {
		$('#' + Grid_Id).datagrid('reload');
	} else {
		$('#' + Grid_Id).treegrid('reload');
	}
}
// 导出
function Easyui_Export(url, Form_Id) {
	// href = $('#'+Form_Id).attr("action");
	x = $('#' + Form_Id).serializeArray();
	$.each(x, function(i, field) {
		if (i == 0) {
			url = url + "?" + field.name + "=" + field.value;
		} else {
			url = url + "&" + field.name + "=" + field.value;
		}

	});
	window.open(url);
}
// 编辑
function Easyui_EditDialog(Grid_Id, Dialog_Id, Form_Id) {
	if (Grid_Id.substr(0, 2) == "dg") {
		var rows = $('#' + Grid_Id).datagrid('getSelections');
		if (rows.length != 1) {
			$.messager.alert('系统提示', '请先选择一行数据！');
			return;
		}
		var row = rows[0];
		$('#' + Dialog_Id).dialog("open");
		$('#' + Form_Id).form("load", row);
	} else {
		var rows = $('#' + Grid_Id).treegrid('getSelections');
		if (rows.length != 1) {
			$.messager.alert('系统提示', '请先选择一行数据！');
			return;
		}
		var row = rows[0];
		$('#' + Dialog_Id).dialog("open");
		$('#' + Form_Id).form("load", row);
	}
}
/* 提交表单 */
function Easyui_Submit(Grid_Id, Dialog_Id, Form_Id) {
	var flg = $("#" + Form_Id).form('validate')
	if (flg) {
		$.post($('#' + Form_Id).attr("action"), $('#' + Form_Id).serialize(), function(rs) {
			var result = eval('(' + rs + ')');
			if (result.flag) {
				$.messager.show({
					title : '成功提示',
					msg : result.msg,
					timeout : 1000,
					showType : 'slide'
				});
				if (Grid_Id.substr(0, 2) == "dg") {
					$('#' + Grid_Id).datagrid('reload');
				} else {
					$('#' + Grid_Id).treegrid('reload');
				}
			} else {
				$.messager.show({
					title : '错误提示',
					msg : result.msg,
					timeout : 2000,
					showType : 'slide'
				});
			}
			$('#' + Dialog_Id).dialog("close");
			$('#' + Form_Id).form('clear');
		})
	}

}
// 删除数据
function Easyui_Delete(Grid_Id, url, PrimarykeyName) {
	if (Grid_Id.substr(0, 2) == "dg") {
		var rows = $('#' + Grid_Id).datagrid('getSelections');
		if (rows.length != 1) {
			$.messager.alert('系统提示', '请先选择一行数据！');
			return;
		}
		var row = rows[0];
	} else {
		var rows = $('#' + Grid_Id).treegrid('getSelections');
		if (rows.length != 1) {
			$.messager.alert('系统提示', '请先选择一行数据！');
			return;
		}
		var row = rows[0];
	}
	$.messager.confirm('确定操作', '您确定要删除所选的记录吗？', function(flag) {
		if (flag) {
			$.post(url, {
				id : row[PrimarykeyName]
			}, function(result) {
				if(typeof result =='string'){
					result = eval('(' + result + ')');
				}
				if (!result.flag) {
					$.messager.show({
						title : '错误提示',
						msg : result.msg,
						timeout : 2000,
						showType : 'slide'
					});
				} else {
					if (Grid_Id.substr(0, 2) == "dg") {
						$('#' + Grid_Id).datagrid('reload');
					} else {
						$('#' + Grid_Id).treegrid('reload');
					}
					$.messager.show({
						title : '成功提示',
						msg : result.msg,
						timeout : 1000,
						showType : 'slide'
					});
				}
			})
		}
	})
}
// 打开对话框
function Easyui_OpenDialog(Dialog_Id) {
	$('#' + Dialog_Id).dialog("open");
}
// 关闭对话框
function Easyui_CloseDialog(Dialog_Id) {
	$('#' + Dialog_Id).dialog("close");
}
// 关闭对话框，并清除Form表单内容
function Easyui_CloseDialog(Dialog_Id, Form_Id) {
	$('#' + Dialog_Id).dialog("close");
	$('#' + Form_Id).form('clear');
}
/* 刷新页面 */
function Easyui_Reload(Grid_Id) {
	if (Grid_Id.substr(0, 2) == "dg") {
		$('#' + Grid_Id).datagrid('reload');
	} else {
		$('#' + Grid_Id).treegrid('reload');
	}
}
// 弹出窗口
function ShowWindow(Div_Id, url, title, width, height) {
	width = width || 500;
	height = height || 400;
	$('#' + Div_Id).window({
		height : height,
		width : width,
		title : title,
		href : url,
		modal : true
	});
	$('#' + Div_Id).window('center');
	$('#' + Div_Id).window('open');
}