package cc.mxtt.common.utils;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.xml.sax.SAXException;
/**
 * Sql管理工具类，建议将工具类与serviceImpl放在同一目录下
 * 工具类会获取***ServiceImpl.java 目录下所有***Mapper.xml中的sql语句
 * 使用方法：
 * SqlManager sqlManager = new SqlManager(this.getClass());
 * 或者 SqlManager sqlManager = new SqlManager(userServiceImpl.class);
 * String sql = sqlManager.get("userMapper.getListUser");
 * @param clazz
 */
public class SqlManager {
	public static Map<String, String> sqlMap = new HashMap<String, String>();
	private static String moduleName;
	//获取PathKit.getRootClassPath()目录下的全部sql语句映射
	public SqlManager() {
		SqlManager.moduleName = "";
		getSqlMap();
	}
	//获取PathKit.getRootClassPath()目录下指定模块的sql语句映射
	@SuppressWarnings("rawtypes")
	public SqlManager(Class clazz) {
		SqlManager.moduleName = clazz.getPackage().getName().replace(".", "/");
		getSqlMap();
	}
	//获取PathKit.getRootClassPath()目录下指定模块的sql语句映射
	public void setModuleName(String ModuleName){
		SqlManager.moduleName = ModuleName;
		getSqlMap();
	}
	/**
	 * 获取SQL语句
	 * @param XML文件名.sql语句ID
	 * 			userMapper.userList
	 * @return
	 */
	public String get(String mapperMethodName){
		return sqlMap.get(mapperMethodName);
	}
	//遍历XML文件将SQL语句put到sqlMap里
	public void getSqlMap(){
			try {
				//sqlMap.clear();
				sqlMap = SqlManagerUtil.getSqlMap(moduleName);
			} catch (SAXException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
