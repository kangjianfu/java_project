package com.yunshi.tengma.common.utils;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {

	public static int getYear() {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		return calendar.get(Calendar.YEAR);
	}

	public static int getMonth() {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		return calendar.get(Calendar.MONTH) + 1;
	}

	public static int getDay() {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		return calendar.get(Calendar.DATE);
	}

	public static int getLastDay() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.DATE, 1);
		calendar.roll(Calendar.DATE, -1);
		return calendar.get(Calendar.DATE);
	}
	public static String getFull() {
		Calendar calendar = Calendar.getInstance();
		return String.format("%1$tY-%<tm-%<te", calendar);
	}

	public static String getWeekMonth() {
		return String.format("%1$tY年%<tm月", Calendar.getInstance());
	}
	/**
	 * 获取日期字符串
	 * @param date
	 * @return 2016-01-18
	 */
	public static String getDate(Date date){
		String result="";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		if(date!=null){
			result=sdf.format(date);
		}
		return result;
	}
	/**
	 * 获取日期时间字符串
	 * @param date
	 * @return 2016-01-18 23:39:34
	 */
	public static String getDateTime(Date date){
		String result="";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if(date!=null){
			result=sdf.format(date);
		}
		return result;
	}
	/**
	 * 获取日期时间秒毫秒
	 * @param date
	 * @return 20160118233115912
	 */
	public static String getDateTimeSecond(){
		return new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
	}
	public static Date getOracleDate() {
		return new java.sql.Date(new java.util.Date().getTime());
	} 
	public static Date getOracleDate(String strDate) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		try {
			date = sdf.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return new java.sql.Date(date.getTime());
	}
	public static Time getOracleTime() {
		return new java.sql.Time(new java.util.Date().getTime());
	} 
	public static Time getOracleTime(String strDate) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		try {
			date = sdf.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return new java.sql.Time(date.getTime());
	}
	public static Timestamp getOracleDateTime(){
		return new java.sql.Timestamp(new java.util.Date().getTime());
	} 
	public static Timestamp getOracleDateTime(String strDate) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		try {
			date = sdf.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return new java.sql.Timestamp(date.getTime());
	}
	//format格式："yyyy年-MM月-dd日 HH时:mm分:ss秒"
	public static String formatDate(Date date,String format){
		String result="";
		SimpleDateFormat sdf=new SimpleDateFormat(format);
		if(date!=null){
			result=sdf.format(date);
		}
		return result;
	}
	
	public static Date formatString(String str,String format) throws Exception{
		SimpleDateFormat sdf=new SimpleDateFormat(format);
		return sdf.parse(str);
	}
	/**
	 * 计算两个时间间隔天数
	 * 
	 * @param startday
	 * @param endday
	 * @return
	 */
	public static int getDaysBetween(Date date1, Date date2) {
		Calendar d1 = Calendar.getInstance();
		d1.setTime(date1);
		Calendar d2 = Calendar.getInstance();
		d2.setTime(date2);
		if (d1.after(d2)) {
			java.util.Calendar swap = d1;
			d1 = d2;
			d2 = swap;
		}
		int days = d2.get(Calendar.DAY_OF_YEAR) - d1.get(Calendar.DAY_OF_YEAR);
		int y2 = d2.get(Calendar.YEAR);
		if (d1.get(Calendar.YEAR) != y2) {
			d1 = (Calendar) d1.clone();
			do {
				days += d1.getActualMaximum(Calendar.DAY_OF_YEAR);// 得到当年的实际天数
				d1.add(Calendar.YEAR, 1);
			} while (d1.get(Calendar.YEAR) != y2);
		}
		return days;
	}
	public static void main(String[] args) {
		System.out.println(getLastDay());
	}

}
