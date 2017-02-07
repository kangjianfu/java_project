package com.yunshi.tengma.common.utils;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import com.jfinal.kit.PathKit;
import com.swetake.util.Qrcode;
/**   
 * 二维码生成器  
 * @author www.mxtt.cc  
 * 2016年3月4日 上午11:56:30   
 */
public class QRCodeUtil {
	/**
	 * 创建二维码图片
	 * @param contents 添加的文本或URL
	 * @param imgPath  生成的图片路径及文件名
	 */
	public static void createQRCode(String contents, String imgPath) {
		int width = 140;
		int height = 140;
		try {
			Qrcode qrcode = new Qrcode();
		    // 设置二维码排错率，可选L(7%)、M(15%)、Q(25%)、H(30%)，排错率越高可存储的信息越少，但对二维码清晰度的要求越小  
			qrcode.setQrcodeErrorCorrect('Q');
			qrcode.setQrcodeEncodeMode('B');
			// 设置设置二维码尺寸，取值范围1-40，值越大尺寸越大，可存储的信息越大
			qrcode.setQrcodeVersion(7);

			BufferedImage bufImg = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_BGR);

			Graphics2D gs = bufImg.createGraphics();
			gs.setBackground(Color.WHITE);
			gs.clearRect(0, 0, width, height);
			gs.setColor(Color.BLACK);
			//偏移量
			int pixoff = 2;

			byte[] contentBytes = contents.getBytes("UTF-8");
			if (contentBytes.length != 0 && contentBytes.length < 120) {
				boolean[][] codeOut = qrcode.calQrcode(contentBytes);
				for (int i = 0; i < codeOut.length; i++) {
					for (int j = 0; j < codeOut.length; j++) {
						if (codeOut[j][i]) {
							gs.fillRect(j * 3 + pixoff, i * 3 + pixoff, 3, 3);
						}
					}
				}
			} else {
				System.out.println("大小超出限制");
			}
			System.out.println(PathKit.getWebRootPath());
			Image img = ImageIO.read(new File(PathKit.getWebRootPath()+"/images/qrcode_logo.png"));//实例化一个Image对象。
			gs.drawImage(img, 45, 45, 50,50, null);
			
			
			gs.dispose();
			bufImg.flush();
			File imgFile = new File(imgPath);
			ImageIO.write(bufImg, "png", imgFile);
			System.out.println("二维码生成成功！");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		StringBuffer str = new StringBuffer();
		str.append("29080000002273");
		str.append("\n");
		str.append("方正君逸M500");
		createQRCode(str.toString(), "2.png");
	}
}
