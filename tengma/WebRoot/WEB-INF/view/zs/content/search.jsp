<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<form id="fm-zs-content-search" action="zs/listFz">
	<table>
		<tr>
			<td>问题：</td>
			<td><input type="text" name="question" /></td>
			<td>答案：</td>
			<td><input type="text" name="answer" /></td>
			<td>难易程度：</td>
			<td><input id="level" name="level" class="easyui-combobox"  
		    data-options="valueField:'bm',textField:'mc',url:'core/listXxDict/NYCD',editable:false" /></td>
		</tr>
	</table>
</form>				