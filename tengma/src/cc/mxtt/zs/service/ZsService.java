package cc.mxtt.zs.service;

import java.util.List;
import java.util.Map;

import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

import cc.mxtt.common.model.ZsGroup;

public interface ZsService {
	/**
	 * 获取知识分类树形列表
	 * @return
	 */
	public List<Record> getTreeGroup();
	/**
	 * 获取知识一级分类列表
	 * @return
	 */
	public List<ZsGroup> getListGroupLevel1();
	/**
	 * 获取知识二级分类列表
	 * @return
	 */
	public List<Record> getListGroupLevel2();
	/**
	 * 通过分类ID删除知识分类
	 * @return
	 */
	public Map<String, Object> deleteGroupById(int id);
	/**
	 * 获取知识列表
	 * @return
	 */
	public Page<Record> getPageContent(int pageNumber, int pageSize, Map<String, String[]> paraMap);
	/**
	 * 通过内容ID删除知识内容
	 * @param id
	 * @return
	 */
	public Map<String, Object> deleteContentById(int id);
}
