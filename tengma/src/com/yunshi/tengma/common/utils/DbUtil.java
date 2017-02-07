package com.yunshi.tengma.common.utils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

public class DbUtil {
	/**
	 * 创建32位UUID
	 * @return
	 */
	public static String createUUID() {
		return UUID.randomUUID().toString().replace("-", "");
	}
	/**
	 * 创建日期时间ID
	 * @return
	 */
	public static String createDateTimeID() {
		return new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
	}
	/**
	 * 创建带字符串前缀的日期时间ID
	 * @param 字符串前缀
	 * @return
	 */
	public static String createDateTimeID(String prefix) {
		String id = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
		return prefix+id;
	}
	/**
	 * 获取数据字典明细列表 
	 * 教育培训不再使用
	 * 使用方法：如果存在HJGL_DICT 和HJGL_DICT_DETAIL 的数据字典，其中有一个字典大类是RWZT，则参数名称为HJGL.RWZT
	 * List<Record> list = DbUtil.getListDict("HJGL.RWZT");
	 * renderJson(list);
	 * @param model_Bm 字典模型.编码
	 * @return
	 */
	public static List<Record> getListDict(String model_Bm) {
		String[] str = model_Bm.split("\\.");
		String model = str[0];
		String bm = str[1];
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT B.BM,B.MC,B.ORDER_ID FROM "+model+"_DICT A,"+model+"_DICT_DETAIL B");
		sql.append(" WHERE A.ID=B.DICT_ID AND B.YXBZ='Y'");
		sql.append(" AND A.BM=?");
		return Db.find(sql.toString(),bm);
	}
	/**
	 * 创建easyui树
	 * @param list 字典列表 
	 *              List<Record> list = Db.find(select id,bm,mc,url,parent_id from sys_dict order by order_id);
	 * @param fieldMap 字典列表要展示的结果列：
	 * 			    LinkedHashMap<String, String> fieldMap = new LinkedHashMap<String, String>();
     *  		    fieldMap.put("id", "bm");
     *      		fieldMap.put("text", "mc");
	 * @param rootId 字典列表的根ID 
	 *              String rootId = Db.queryBigDecimal("select ID from SYS_DICT t WHERE t.bm=?",bm).toString();
	 * @param pkName 字典的主键名，默认为id
	 * @param fkName 字典的外键（上级id）,默认为parent_id
	 * @return
	 */
	public static List<Record> createTree(List<Record> list, LinkedHashMap<String, String> fieldMap,
		 String rootId, String pkName,String fkName) {
		List<Record> result = new ArrayList<Record>();
		int size = fieldMap.size();
	    String[] targetFields = new String[size];
	    String[] sourceFields = new String[size];
	     // 填充数组
	    int count = 0;
        for (Map.Entry<String, String> entry : fieldMap.entrySet()) {
            targetFields[count] = entry.getKey();
            sourceFields[count] = entry.getValue();
            count++;
        }
		for(Record p:list) {
			if(StringUtil.getString(p.get(pkName)).equals(rootId)) {
				Record record = new Record();
		        // 填充树
		        for (int i = 0; i < targetFields.length; i++) {
		        	record.set(targetFields[i], p.get(sourceFields[i]));
		        }
	        	List<Record> children = getChildren(list, fieldMap, StringUtil.getString(p.get(pkName)), pkName, fkName);
				if (children != null && children.size() > 0){
					record.set("children", children);
					record.set("state", "open");
				}else{
					record.set("state", "open");
				}
		        result.add(record);
			}
		}
		return result;
	}
	private static List<Record> getChildren(List<Record> list, LinkedHashMap<String, String> fieldMap,
			String rootId, String pkName,String fkName) {
		List<Record> children = new ArrayList<Record>();
		int size = fieldMap.size();
	    String[] targetFields = new String[size];
	    String[] sourceFields = new String[size];
	     // 填充数组
	    int count = 0;
        for (Map.Entry<String, String> entry : fieldMap.entrySet()) {
            targetFields[count] = entry.getKey();
            sourceFields[count] = entry.getValue();
            count++;
        }
		for(Record p:list) {
			if(rootId.equals(StringUtil.getString(p.get(fkName)))) {
				Record record = new Record();
		        // 填充树
		        for (int i = 0; i < targetFields.length; i++) {
		        	record.set(targetFields[i], p.get(sourceFields[i]));
		        }
	        	List<Record> c = getChildren(list, fieldMap, StringUtil.getString(p.get(pkName)), pkName, fkName);
				if (c != null && c.size() > 0){
					record.set("children", c);
					record.set("state", "closed");
				}else{
					record.set("state", "open");
				}
		        children.add(record);
			}
		}
		return children;
	}
	/**
	 * 创建easyui树，老方法，不再使用
	 * 使用方法：(字段值没有可以不输出！)
	 * sql="select id,name,val,url,iconCls,parent_id,order_id,t.qybz from dual";
	 * List<Record> list = Db.find(sql);
	 * List<Record> listTree = DbUtil.createTree(list,parent_id);
	 * renderJson(listTree);
	 * @param list
	 * @return
	 */
	public static List<Record> createTree(List<Record> list,String deptParentId) {
		List<Record> permissions = new ArrayList<Record>();
		for (int i = 0; i < list.size(); i++) {
			Record p = list.get(i);
			if(StringUtil.getString(p.get("id")).equals(deptParentId)) {	
				Record record = new Record();
				record.set("id", p.get("id"));
				record.set("name", p.get("name"));
				record.set("text", p.get("name"));
				record.set("val", p.get("val"));
				record.set("url", p.get("url"));
				record.set("iconCls", p.get("iconCls"));
				record.set("parent_id", p.get("parent_id"));
				record.set("order_id", p.get("order_id"));
				record.set("qybz", p.get("qybz"));
				List<Record> children = getChildren(list, StringUtil.getString(p.get("id")));
				if (children != null && children.size() > 0){
					record.set("children", children);
					record.set("state", "closed");
				}else{
					record.set("state", "open");
				}
				permissions.add(record);
			}
		}
		return permissions;
	}

	private static List<Record> getChildren(List<Record> list, String parent_id) {
		List<Record> children = new ArrayList<Record>();
		for (int i = 0; i < list.size(); i++) {
			Record p = list.get(i);
			if (parent_id.equals(StringUtil.getString(p.get("parent_id")))) {
				Record record = new Record();
				record.set("id", p.get("id"));
				record.set("name", p.get("name"));
				record.set("text", p.get("name"));
				record.set("val", p.get("val"));
				record.set("url", p.get("url"));
				record.set("iconCls", p.get("iconCls"));
				record.set("parent_id", p.get("parent_id"));
				record.set("order_id", p.get("order_id"));
				record.set("qybz", p.get("qybz"));
				List<Record> c = getChildren(list, StringUtil.getString(p.get("id")));
				if (c != null && c.size() > 0){
					record.set("children", c);
					record.set("state", "closed");
				}else{
					record.set("state", "open");
				}
				children.add(record);
			}
		}
		return children;
	}
}
