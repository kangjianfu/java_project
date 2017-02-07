package com.yunshi.tengma.system.service.impl;

import com.jfinal.plugin.activerecord.Page;
import com.yunshi.tengma.common.model.XxDict;
import com.yunshi.tengma.common.model.XxDictDetail;
import com.yunshi.tengma.system.service.XxSjzdService;

public class XxSjzdServiceImpl implements XxSjzdService {
	@Override
	public Page<XxDict> getListZddl(int pageNumber, int pageSize) {
		String select = "select id,bm,mc,qybz,if(qybz='Y','启用','禁用') qybzmc,xgbz,if(xgbz='Y','允许修改','禁止修改') xgbzmc";
		String sqlExceptSelect = "from sys_xx_dict order by id desc";
		return XxDict.dao.paginate(pageNumber, pageSize, select, sqlExceptSelect);
	}

	@Override
	public boolean deleteZddl(String id) {
		//字典大类有字典明细的,不允许删除
		XxDictDetail  xxDictDetail = XxDictDetail.dao.findFirst("select 1 from sys_xx_dict_detail where dict_id=?", id);
		if(xxDictDetail==null) {
			return XxDict.dao.deleteById(id);
		} else {
			return false;
		}
	}

	@Override
	public Page<XxDictDetail> getListZdxl(int pageNumber, int pageSize, String dict_id) {
		String select = "select id,bm,mc,order_id,qybz,if(qybz='Y','启用','禁用') qybzmc,xgbz,if(xgbz='Y','允许修改','禁止修改') xgbzmc,dict_id";
		String sqlExceptSelect = "from sys_xx_dict_detail where dict_id=? order by order_id";
		return XxDictDetail.dao.paginate(pageNumber, pageSize, select, sqlExceptSelect, dict_id);
	}

	@Override
	public boolean deleteZdxl(String id) {
		return XxDictDetail.dao.deleteById(id);
	}

}
