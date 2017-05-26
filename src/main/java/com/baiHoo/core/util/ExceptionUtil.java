package com.baiHoo.core.util;

import java.io.PrintWriter;
import java.io.StringWriter;


/**
 * 
 *<p>Title: ExceptionUtil</p>
 *<p>Description: 
 *
 *异常工具类
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年4月30日
 */
public class ExceptionUtil {

	/**
	 * 返回错误信息字符串
	 * 
	 * @param ex
	 *            Exception
	 * @return 错误信息字符串
	 */
	public static String getExceptionMessage(Exception ex) {
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		ex.printStackTrace(pw);
		return sw.toString();
	}

}
