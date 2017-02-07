package com.yunshi.tengma.common.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtil {
	 /**
	 * 将字符串中特定模式的字符转换成map中对应的值
	 * 
	 * use: format("my name is ${name}, and i like ${like}!", {"name":"L.cm", "like": "Java"})
	 * 
	 * @param s		需要转换的字符串
	 * @param map	转换所需的键值对集合
	 * @return		转换后的字符串
	 */
	public static String format(String s, Map<String, String> map) {
		StringBuilder sb = new StringBuilder((int)(s.length() * 1.5));
		int cursor = 0;
		for (int start, end; (start = s.indexOf("${", cursor)) != -1 && (end = s.indexOf('}', start)) != -1;) {
			sb.append(s.substring(cursor, start));
			String key = s.substring(start + 2, end);
			sb.append(map.get(key.trim()));
			cursor = end + 1;
		}
		sb.append(s.substring(cursor, s.length()));
		return sb.toString();
	}
	
	public static boolean isEmpty(String str){
		return (str == null || str.trim().equals("") || str.length() < 0);
	}
	
	public static boolean isEmpty(Object obj){
		return (obj == null || obj.toString().trim().equals("") || obj.toString().length() < 0);
	}
	
	public static boolean isEmpty(Object[] args) {
		return args == null || args.length == 0 ? true : false;
	}
	/**
	 * 将对象转为字符串
	 * @param object
	 * @return
	 */
	public static String getString(Object object){
		if(object==null){
			return "";
		}else{
			return object.toString();
		}
	}
	/**
	 * 将对象转换为整数
	 * @param object
	 * @return
	 */
	public static Integer parseInt(Object object){
		if(object==null){
			return 0;
		}else{
			return Integer.parseInt(object.toString());
		}
	}
	public static boolean existStrArr(String str,String []strArr){
		for(int i=0;i<strArr.length;i++){
			if(strArr[i].equals(str)){
				return true;
			}
		}
		return false;
	}
	//检查Email
	public static boolean checkEmail(String email) {
		String regex = "^[a-zA-Z][a-zA-Z0-9._-]*\\@\\w+(\\.)*\\w+\\.\\w+$";
		Pattern p = Pattern.compile(regex);
		Matcher matcher = p.matcher(email);
		return matcher.matches();
	}
	/**
	 * 过滤html
	 * 
	 * @param html
	 * @return
	 */
	public static String formatHTMLIn(String html) {
		html = html.replaceAll("&", "&amp;");
		html = html.replaceAll("<", "&lt;");
		html = html.replaceAll(">", "&gt;");
		html = html.replaceAll("\"", "&quot;");
		return html;
	}

	/**
	 * 解析html
	 * 
	 * @param html
	 * @return
	 */
	public static String formatHTMLOut(String html) {
		html = html.replaceAll("&amp;", "&");
		html = html.replaceAll("&lt;", "<");
		html = html.replaceAll("&gt;", ">");
		html = html.replaceAll("&quot;", "\"");
		return html;
	}
	/**
	 * 验证长度
	 * 
	 * @param str
	 * @param minLength
	 * @param maxLength
	 * @return
	 */
	public static boolean checkLength(String str, int minLength, int maxLength) {
		if (str != null) {
			int len = str.length();
			if (minLength == 0)
				return len <= maxLength;
			else if (maxLength == 0)
				return len >= minLength;
			else
				return (len >= minLength && len <= maxLength);
		}
		return false;
	}
	/**
	 * 编码
	 * 
	 * @param str
	 * @return
	 */
	public static String urlEncoderByUTF8(String str) {
		if (isEmpty(str))
			return "";
		try {
			return URLEncoder.encode(str,"utf-8");
		} catch (UnsupportedEncodingException e) {
		}
		return "";
	}
	/**
	 * 解码
	 * 
	 * @param str
	 * @return
	 */
	public static String urlDecodeByUTF8(String str) {
		if (isEmpty(str))
			return "";
		try {
			return URLDecoder.decode(str, "utf-8");
		} catch (UnsupportedEncodingException e) {
		}
		return "";
	}
	/**
	 * 生成随机数
	 * 
	 * @param len
	 *            随机数长度
	 * @return
	 */
	public static String randomNumber(int len) {
		StringBuffer sb = new StringBuffer();
		Random random = new Random();
		for (int i = 0; i < len; i++) {
			sb.append(Math.abs(random.nextInt()) % 10);
		}
		return sb.toString();
	}
	/**
	 * 判断是否是中文字符
	 * 
	 * @param c
	 * @return
	 */
	public static boolean isChinese(char c) {
		Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);
		if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || ub == Character.UnicodeBlock.GENERAL_PUNCTUATION || ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) {
			return true;
		}
		return false;
	}

	/**
	 * 验证手机号码
	 * 
	 * @param str
	 *            手机号码
	 * @return true:正确
	 */
	public static boolean isMobile(String str) {
		str = str.trim();
		String pattern = "^[1][1-8][0-9]{9}";
		return str.matches(pattern);
	}
	/**
	 * 读取文件后缀名称
	 * 
	 * @param filePath
	 *            文件路径 格式如:/../a.txt
	 * @return
	 */
	public static String getFileFix(String filePath) {
		String temp = "";
		if (filePath != null) {
			temp = filePath.substring(filePath.indexOf("."), filePath.length());
		}
		return temp;
	}
	/**
	 * utf8转gb2312
	 * @param str
	 * @return
	 */
	public static String utf8ToGB2312(String str) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < str.length(); i++) {
			char c = str.charAt(i);
			switch (c) {
			case '+':
				sb.append(' ');
				break;
			case '%':
				try {
					sb.append((char) Integer.parseInt(str.substring(i + 1, i + 3), 16));
				} catch (NumberFormatException e) {
					throw new IllegalArgumentException();
				}
				i += 2;
				break;
			default:
				sb.append(c);
				break;
			}
		}
		// Undo conversion to external encoding
		String result = sb.toString();
		String res = null;
		try {
			byte[] inputBytes = result.getBytes("8859_1");
			res = new String(inputBytes, "UTF-8");
		} catch (Exception e) {
		}
		return res;
	}

}
