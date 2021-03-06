package com.yunshi.tengma.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.jfinal.kit.StrKit;
import com.yunshi.tengma.common.core.SqlManager;
import com.yunshi.tengma.common.utils.SqlUtil;
import com.yunshi.tengma.system.model.Menu;
import com.yunshi.tengma.system.service.MenuService;
import com.yunshi.tengma.system.service.impl.MenuServiceImpl;

public class zcglTest {
	@Test
	public void testZczt() {
		MenuService ms = new MenuServiceImpl();
		Menu.dao.getChildrenTreeByRoleIds("1", "100");
	}
	@Test
	public void testSqlManager() {
		SqlManager sqlManager = new SqlManager(this.getClass());
		String sql = sqlManager.get("ZcglTestMapper.getListZcxxdj_select");
		System.out.println(sql);
	}
	@Test
	public void testSqlUtil() {
		SqlUtil sqlUtil = new SqlUtil(this.getClass());
		List<Object> paramObj = new ArrayList<Object>();
		String sql = sqlUtil.get("userlist");
		String syr = "MXTT";
		if(StrKit.notBlank(syr)){
			sql = sql.replace("@syr@", "and t.syr=?");
			paramObj.add(syr);
		}
		String zcmc = "电脑";
		if(StrKit.notBlank(zcmc)){
			sql = sql.replace("@zcmc@", "and t.zcmc like '%?%'");
			paramObj.add(zcmc);
		}
		for(Object o: paramObj){
			System.out.println(o.toString());
		}
		System.out.println(sql);

	}
}
