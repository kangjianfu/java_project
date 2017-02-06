//页面日期默认加载  
$(function(){  
	var curr_time = new Date();   
	$("#date_q").datebox("setValue",getFirstDay());
	$("#date_z").datebox("setValue",getLastDay());
});
