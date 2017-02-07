package com.yunshi.tengma.zs.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.yunshi.tengma.common.core.SqlManager;
import com.yunshi.tengma.common.model.ZsContent;
import com.yunshi.tengma.common.model.ZsGroup;
import com.yunshi.tengma.common.utils.DbUtil;
import com.yunshi.tengma.zs.service.ZsService;

public class ZsServiceImpl implements ZsService {
	SqlManager sqlManager = new SqlManager(this.getClass());
	@Override
	public List<Record> getTreeGroup() {
		String sql = sqlManager.get("ZsMapper.getTreeGroup");
		List<Record> list = Db.find(sql);
		//获取字典根ID
		String rootId = "1";
		//获取要展示的列属性
        LinkedHashMap<String, String> fieldMap = new LinkedHashMap<String, String>();
        fieldMap.put("id", "id");
        fieldMap.put("name", "name");
        fieldMap.put("parent_id", "parent_id");
        fieldMap.put("order_id", "order_id");
		return DbUtil.createTree(list,fieldMap,rootId,"id","parent_id");
	}
	@Override
	public List<ZsGroup> getListGroupLevel1() {
		String sql = sqlManager.get("ZsMapper.getListGroupLevel1");
		return ZsGroup.dao.find(sql);
	}
	@Override
	public List<Record> getListGroupLevel2() {
		String sql = sqlManager.get("ZsMapper.getListGroupLevel2");
		return Db.find(sql);
	}
	@Override
	public Map<String, Object> deleteGroupById(int id) {
		Map<String, Object> result = new HashMap<String, Object>();
		ZsGroup group = ZsGroup.dao.findById(id);
		Boolean target = true;
		String msg = "";
		if (group.getParentId()==1) {
			String sql = "select * from zs_group t where t.parent_id=?";
			if(ZsGroup.dao.find(sql,id).size()>0){
				target = false;
				msg = "知识分类下有子分类,不能删除！";
			}
		} else {
			String sql = "select * from zs_content t where t.group_id=?";
			if(ZsContent.dao.find(sql,id).size()>0){
				target = false;
				msg = "知识分类中已添加知识，不能删除！";
			}
		}
		if(target) {
			if(ZsGroup.dao.deleteById(id)) {
				result.put("flag", true);
				result.put("msg", "知识分类删除成功！");
			} else {
				result.put("flag", false);
				result.put("msg", "知识分类删除失败！");
			}
		} else {
			result.put("flag", false);
			result.put("msg", msg);
		}
		return result;
	}
	@Override
	public Page<Record> getPageContent(int pageNumber, int pageSize,Map<String, String[]> paraMap) {
		String select = sqlManager.get("ZsMapper.getPageContent_select");
		List<Object> paramObj = new ArrayList<Object>();
		StringBuffer sqlExceptSelect = new StringBuffer();
		sqlExceptSelect.append(sqlManager.get("ZsMapper.getPageContent_sqlExceptSelect"));
		sqlExceptSelect.append("and t.user_id = ? ");
		paramObj.add(paraMap.get("user_id")[0]);
		if(StrKit.notBlank(paraMap.get("question"))) {
			sqlExceptSelect.append("and t.question like ? ");
			paramObj.add("%"+paraMap.get("question")[0].toString()+"%");
		}
		if(StrKit.notBlank(paraMap.get("answer"))) {
			sqlExceptSelect.append("and t.answer like ? ");
			paramObj.add("%"+paraMap.get("answer")[0].toString()+"%");
		}
		if(StrKit.notBlank(paraMap.get("level"))) {
			sqlExceptSelect.append("and t.level = ? ");
			paramObj.add(paraMap.get("level")[0].toString());
		}
		sqlExceptSelect.append("order by t.createtime desc");
		return Db.paginate(pageNumber, pageSize, select, sqlExceptSelect.toString(),paramObj.toArray());
	}
	@Override
	public Map<String, Object> deleteContentById(int id) {
		Map<String, Object> result = new HashMap<String, Object>();
		if(ZsContent.dao.deleteById(id)) {
			result.put("flag", true);
			result.put("msg", "知识内容删除成功！");
		} else {
			result.put("flag", false);
			result.put("msg", "知识内容删除失败！");
		}
		return result;
	}

}
