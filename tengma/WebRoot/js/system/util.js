/*JS常用函数集*/
function getTime() {
	var now = new Date(), h = now.getHours(), m = now.getMinutes(), s = now
			.getSeconds(), ms = now.getMilliseconds();
	if (h < 10)
		h = "0" + h;
	if (m < 10)
		m = "0" + m;
	if (s < 10)
		h = "0" + s;
	return (h + ":" + m + ":" + s + " " + ms);
}
function getDate() {
	var now = new Date(), y = now.getFullYear(), m = now.getMonth()+1,d = now.getDate();
	if (m < 10)
		m = "0" + m;
	if (d < 10)
		d = "0" + d;
	return (y + "-" + m + "-" + d);
}
function getDate(dateStr) {
	var now = new Date(dateStr), y = now.getFullYear(), m = now.getMonth()+1,d = now.getDate();
	if (m < 10)
		m = "0" + m;
	if (d < 10)
		d = "0" + d;
	return (y + "-" + m + "-" + d);
}
function getFullDate() {
	var now = new Date(), y = now.getFullYear(), m = now.getMonth()+1, w = now
			.getDay(), d = now.getDate();

	if (m < 10)
		h = "0" + m;
	if (d < 10)
		d = "0" + d;
	return (y + "年" + m + "月" + d + "日" + week[w]);
}
function getFirstDay() {
	var now = new Date();
	var year = now.getFullYear();
	var month = now.getMonth()+1;
	if (month<10) {
		month = "0" + month;
	}
	return year+"-"+month+"-01"
}
function getLastDay() {
	var now = new Date();
	var year = now.getFullYear();
	var month = now.getMonth()+1;
	if (month<10) {
		month = "0" + month;
	}
	myDate = new Date(year,month,0);
	return year+"-"+month+"-"+myDate.getDate();
}
function getDateTime() {
	var now = new Date(), yyyy = now.getFullYear(), mm = now.getMonth()+1, dd = now
			.getDate(), hh = now.getHours(), nn = now.getMinutes(), ss = now
			.getSeconds();

	if (mm < 10)
		mm = "0" + mm;
	if (dd < 10)
		dd = "0" + dd;
	if (hh < 10)
		hh = "0" + hh;
	if (nn < 10)
		nn = "0" + nn;
	if (ss < 10)
		ss = "0" + ss;
	return yyyy + "-" + mm + "-" + dd + " " + hh + ":" + nn + ":" + ss;
}
//验证手机
function isMobile(dianhua) {
	var Mobile=/^(?:13\d|15\d|18\d|17\d)\d{5}(\d{3}|\*{3})$/; //手机号码验证规则
	return Mobile.test(dianhua);  
}
//验证座机(0XXX-XXXXXXX)
function isPhone(dianhua) {
	var Phone=/^((0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;   //座机验证规则
	return Phone.test(dianhua);
}
//验证短号(6位数字)
function isDh(dianhua) {
	var Dh=/^\d{6}$/;
	return Dh.test(dianhua);
}

