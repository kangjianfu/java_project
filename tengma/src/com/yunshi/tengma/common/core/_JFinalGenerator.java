package com.yunshi.tengma.common.core;

import javax.sql.DataSource;

import com.jfinal.kit.PathKit;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.activerecord.generator.Generator;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.plugin.druid.DruidPlugin;

/**
 * 在数据库表有任何变动时，运行一下 main 方法，极速响应变化进行代码重构
 */
public class _JFinalGenerator {
	
	public static DataSource getDataSource() {
		PropKit.use("config.properties");
		C3p0Plugin c3p0Plugin = AppConfig.createC3p0Plugin();
		c3p0Plugin.start();
		return c3p0Plugin.getDataSource();
	}
	
	public static void main(String[] args) {
		// base model 所使用的包名
		String baseModelPackageName = "com.yunshi.tengma.common.model.base";
		// base model 文件保存路径
		String baseModelOutputDir = PathKit.getWebRootPath() + "/../src/cc/mxtt/common/model/base";
		
		// model 所使用的包名 (MappingKit 默认使用的包名)
		String modelPackageName = "com.yunshi.tengma.common.model";
		// model 文件保存路径 (MappingKit 与 DataDictionary 文件默认保存路径)
		String modelOutputDir = baseModelOutputDir + "/..";
		
		//MappingKit 文件包名，默认与 modelPackageName 相同
		//String mappingKitPackageName = "com.yunshi.tengma.common.model";
		//MappingKit 文件输出目录，默认与 modelOutputDir 相同
		//String mappingKitOutputDir = PathKit.getWebRootPath() + "/../src/cc/mxtt/common/model";
		
		//数据字典 DataDictionary 文件输出目录，默认与 modelOutputDir 相同
		//String dataDictionaryOutputDir = PathKit.getWebRootPath() + "/../src/cc/mxtt/common/model";
		
		// 创建生成器
		Generator gernerator = new Generator(getDataSource(), baseModelPackageName, baseModelOutputDir, modelPackageName, modelOutputDir);
		//设置数据库方言
		gernerator.setDialect(new MysqlDialect());
		// 添加不需要生成的表名
		String[] tableNames = new String[]{
				"sys_dept",
				"sys_log",
				"sys_menu",
				"sys_role",
				"sys_role_menu",
				"sys_user",
				"sys_user_role",
				"v_sys_xx_dict",
				"v_sys_cj_dict"
			};
		gernerator.addExcludedTable(tableNames);
		// 设置是否在 Model 中生成 dao 对象
		gernerator.setGenerateDaoInModel(true);
		// 设置是否生成字典文件
		//gernerator.setGenerateDataDictionary(true);
		// 设置需要被移除的表名前缀用于生成modelName。例如表名 "osc_user"，移除前缀 "osc_"后生成的model名为 "User"而非 OscUser
		String[] TableNamePrefixes = new String[]{
				"sys_"
		};
		gernerator.setRemovedTableNamePrefixes(TableNamePrefixes);
		//设置MappingKit 文件包名
		//gernerator.setMappingKitPackageName(mappingKitPackageName);
		//设置MappingKit 文件输出目录
		//gernerator.setMappingKitOutputDir(mappingKitOutputDir);
		//数据字典 DataDictionary 文件输出目录
		//gernerator.setDataDictionaryOutputDir(dataDictionaryOutputDir);
		
		// 生成
		gernerator.generate();
	}
}




