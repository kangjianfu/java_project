package cc.mxtt.system.service;

import com.jfinal.plugin.activerecord.Page;

import cc.mxtt.common.model.XxDict;
import cc.mxtt.common.model.XxDictDetail;

public interface XxSjzdService {
	public Page<XxDict> getListZddl(int pageNumber, int pageSize);
	public boolean deleteZddl(String id);
	public Page<XxDictDetail> getListZdxl(int pageNumber, int pageSize, String dict_id);
	public boolean deleteZdxl(String id);
}
