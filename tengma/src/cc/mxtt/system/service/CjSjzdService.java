package cc.mxtt.system.service;

import java.util.List;

import com.jfinal.plugin.activerecord.Record;

/**
 *@author 饶诗伟
 *@date 2016年4月22日 下午2:55:34
 *@description 层级数据字典
 */
public interface CjSjzdService {
	//获取层级数据字典树
	public List<Record> getListCjDict();
	//通过编码获取层级字典树
	public List<Record> getListCjDict(String bm);
	//删除层级数据字典
	public Boolean deleteCjsjzd(String id);
}
