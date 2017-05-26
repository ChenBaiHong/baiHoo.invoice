package com.baiHoo.core.extend.swftools;
import com.baiHoo.core.util.FileUtils;

/**
 * 
 *<p>Title: DocConverter</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class DocConverter {

	private PDFConverter pdfConverter;
	private SWFConverter swfConverter;
	
	
	public DocConverter(PDFConverter pdfConverter, SWFConverter swfConverter) {
		super();
		this.pdfConverter = pdfConverter;
		this.swfConverter = swfConverter;
	}


	public  void convert(String inputFile,String swfFile,String extend){
		this.pdfConverter.convert2PDF(inputFile,extend);
		String pdfFile = FileUtils.getFilePrefix(inputFile)+".pdf";
		this.swfConverter.convert2SWF(pdfFile, swfFile);
	}
	
	public void convert(String inputFile,String extend){
		this.pdfConverter.convert2PDF(inputFile,extend);
		String pdfFile = FileUtils.getFilePrefix2(inputFile)+".pdf";
		extend=FileUtils.getExtend(pdfFile);
		this.swfConverter.convert2SWF(pdfFile,extend);
		
	}
	
}
