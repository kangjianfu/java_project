package com.yunshi.tengma.common.utils;

import java.awt.image.BufferedImage;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;

import net.sourceforge.jbarcodebean.JBarcodeBean;
import net.sourceforge.jbarcodebean.model.Code39;
import net.sourceforge.jbarcodebean.model.Ean13;
import net.sourceforge.jbarcodebean.model.Ean8;

/**   
 * 条形码生成器  
 * @author www.mxtt.cc  
 * 2016年3月4日 上午11:56:30   
 */
public class BarCodeUtil {
	protected static JBarcodeBean jBarcodeBean= new JBarcodeBean();
	
	public static void createBarEan8(String content, String imgPath){
		jBarcodeBean.setCodeType(new Ean8());
		//在条形码下面显示文字
		jBarcodeBean.setLabelPosition(JBarcodeBean.LABEL_BOTTOM);
		OutputStream out ;
		try {
			out = new FileOutputStream(imgPath);
			jBarcodeBean.setCode(content);
			BufferedImage image = new BufferedImage(200,200, BufferedImage.TYPE_INT_RGB);
			image = jBarcodeBean.draw(image);
			ImageIO.write(image, "JPEG", out);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void createBarEan13(String content, String imgPath){
		jBarcodeBean.setCodeType(new Ean13());
		//在条形码下面显示文字
		jBarcodeBean.setLabelPosition(JBarcodeBean.LABEL_BOTTOM);
		OutputStream out ;
		try {
			out = new FileOutputStream(imgPath);
			jBarcodeBean.setCode(content);
			BufferedImage image = new BufferedImage(200,200, BufferedImage.TYPE_INT_RGB);
			image = jBarcodeBean.draw(image);
			ImageIO.write(image, "JPEG", out);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void createBarCode39(String content, String imgPath){
		jBarcodeBean.setCodeType(new Code39());
		//在条形码下面显示文字
		jBarcodeBean.setLabelPosition(JBarcodeBean.LABEL_BOTTOM);
		OutputStream out ;
		try {
			out = new FileOutputStream(imgPath);
			jBarcodeBean.setCode(content);
			BufferedImage image = new BufferedImage(400,200, BufferedImage.TYPE_INT_RGB);
			image = jBarcodeBean.draw(image);
			ImageIO.write(image, "JPEG", out);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		createBarEan8("12345678","D:\\a.png");
		createBarEan13("1234567890123","D:\\b.png");
		createBarCode39("290803000000956","D:\\c.png");
	}
}
