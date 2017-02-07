package com.yunshi.tengma.common.utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.jfinal.kit.PathKit;

public class SqlManagerUtil {
	
	private static DocumentBuilderFactory documentBuilderFactory = null ;
	public static Map<String, String> getSqlMap(String moduleName) throws SAXException, IOException {
		List<File> fileList=new ArrayList<File>();
		//refreshFileList(fileList,"D:\\workspace\\jfinal_authority_oracle\\WebRoot\\WEB-INF\\classes\\sqlManager\\"+moduleName);
		//refreshFileList(fileList,PathKit.getRootClassPath()+"\\sqlManager\\"+moduleName);
		refreshFileList(fileList,PathKit.getRootClassPath()+"\\"+moduleName);
		Map<String, String> sqlMap = new HashMap<String, String>();
		for (File xmlFile : fileList) {
			Document doc = getDocumentBuilder().parse(new File(xmlFile.getAbsolutePath()));
			NodeList nodes = (NodeList) doc.getElementsByTagName("sql");
			if (nodes.getLength()>0) {
				for (int i=0;i<nodes.getLength();i++) {
					Node childNode = nodes.item(i);
					String sqlName = childNode.getParentNode().getAttributes().getNamedItem("name").getNodeValue();
					String sqlId = childNode.getAttributes().getNamedItem("id").getNodeValue();
					String sqlValue = childNode.getTextContent();
					sqlMap.put(sqlName+"."+sqlId,sqlValue);
				}
			}
		}
		return sqlMap;
	}
	private static DocumentBuilderFactory getDocumentBuilderFactory() {
		if (documentBuilderFactory == null) {
			documentBuilderFactory = DocumentBuilderFactory.newInstance();
		}
		return documentBuilderFactory;
	}
	private static DocumentBuilder getDocumentBuilder() {
		try {
			return getDocumentBuilderFactory().newDocumentBuilder();
		} catch (ParserConfigurationException e) {
			return null;
		}
	}
	public static void refreshFileList(List<File> filelist,String strPath) {
		String filename;// 文件名
		File dir = new File(strPath);// 文件夹dir
		File[] files = dir.listFiles();// 文件夹下的所有文件或文件夹
		if (files == null)
			return;
		for (int i = 0; i < files.length; i++) {
			if (files[i].isDirectory()) {
				refreshFileList(filelist,files[i].getAbsolutePath());// 递归文件夹！！！
			} else {
				filename = files[i].getName();
				if (filename.endsWith("Mapper.xml"))// 判断是不是msml后缀的文件
				{
					filelist.add(files[i]);// 对于文件才把它的路径加到filelist中
				}
			}

		}
	}
}
