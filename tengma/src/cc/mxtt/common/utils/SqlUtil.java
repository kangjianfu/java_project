package cc.mxtt.common.utils;

import com.jfinal.plugin.activerecord.Sqls;
/**
 * Sql管理工具类<xml格式>，建议将Mapper.sql与serviceImpl.java放在同一目录下
 * userServiceImpl 对应的sql映射是userMapper.sql
 * 使用方法：
 * SqlUtil sqlUtil = new SqlUtil(this.getClass()) ;
 * 或者 SqlUtil sqlUtil = new SqlUtil(userServiceImpl.class) ;
 * String sql = sqlUtil.get("getListUser");
 * @param clazz
 */
public class SqlUtil {
	private static String slqFileName ;
	@SuppressWarnings("rawtypes")
	public SqlUtil(Class clazz) {
		String AbsolutePathFileName = clazz.getName()
							.replace(".", "/")
							.replace("ServiceImpl", "Mapper.sql");
		SqlUtil.slqFileName = AbsolutePathFileName;
		Sqls.load(AbsolutePathFileName);
	}
	private String getSqlFileName() {
		return SqlUtil.slqFileName;
	}
	public String get(String sqlKey) {
		return Sqls.get(getSqlFileName(),sqlKey);
	}
}
