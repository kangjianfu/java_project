package com.yunshi.tengma.common.utils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

import com.jfinal.plugin.activerecord.Record;

public class ExcelUtil {
	/**
	 * 导出excel文件类
	 * @param response  getResponse()
	 * @param filename  导出文件名
	 * @param headers   中文列名称
	 * @param columns   英文列名称
	 * @param list      数据集
	 * @throws Exception
	 */
	public static void exportExcelData(HttpServletResponse response,String filename,String[] headers,String[] columns,List<Record> list)throws Exception{
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet1 = wb.createSheet("Sheet1");
		HSSFRow row = sheet1.createRow(0);
		HSSFCell cell = null;
		for(int i=0;i<headers.length;i++){
			cell = row.createCell(i);
			cell.setCellValue(headers[i]);
		}
		if(list!=null){
			for(int i=0;i<list.size();i++){
				Record record = list.get(i);
				row = sheet1.createRow(i+1);
				for(int j=0;j<columns.length;j++){
					cell = row.createCell(j);
					cell.setCellValue(record.get(columns[j])==null?"":record.get(columns[j]).toString());
				}
			}
		}
		try{
			response.setHeader("Content-Disposition", "attachment;filename="+filename);
			response.setContentType("application/ynd.ms-excel;charset=UTF-8");
			OutputStream out = response.getOutputStream();
			wb.write(out);
			out.flush();
			out.close();
		}catch(FileNotFoundException e){
			e.printStackTrace();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
	public static void exportExcelDataWithTemplate(HttpServletResponse response, String kzztdjlx_dm, LinkedHashMap<String, String> rowCell, String fileName) throws IOException {
		InputStream inp;
		if(kzztdjlx_dm.equals("1120")) {
			inp = ExcelUtil.class.getResourceAsStream("/cc/mxtt/ygz/service/impl/dchs_gtgsh.xls");
		} else {
			inp = ExcelUtil.class.getResourceAsStream("/cc/mxtt/ygz/service/impl/dchs_dwnsr.xls");
		}
		POIFSFileSystem fs=new POIFSFileSystem(inp);
		HSSFWorkbook wb = new HSSFWorkbook(fs);
		HSSFSheet sheet=wb.getSheetAt(0);
		for (Map.Entry<String, String> entry : rowCell.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            String[] keys = key.split(",");
            sheet.getRow(Integer.parseInt(keys[0]))
            	 .getCell(Integer.parseInt(keys[1]))
                 .setCellValue(value); 
        }
		try{
			response.setHeader("Content-Disposition", "attachment;filename="+fileName);
			response.setContentType("application/ynd.ms-excel;charset=UTF-8");
			OutputStream out = response.getOutputStream();
			wb.write(out);
			out.flush();
			out.close();
		}catch(FileNotFoundException e){
			e.printStackTrace();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
}
