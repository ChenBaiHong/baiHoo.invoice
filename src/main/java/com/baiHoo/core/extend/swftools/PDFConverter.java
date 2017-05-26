package com.baiHoo.core.extend.swftools;

/**
 * 
 *<p>Title: PDFConverter</p>
 *<p>Description: 
 *
 * PDF文档转换接口
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public interface PDFConverter {
	public void convert2PDF(String inputFile,String pdfFile,String extend);
	public void convert2PDF(String inputFile,String extend);

}
