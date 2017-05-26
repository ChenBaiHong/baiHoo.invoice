package com.baiHoo.core.util;

/**
 * 
 *<p>Title: SystemPath</p>
 *<p>Description: 
 *
 *	得到当前应用的系统路径
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年5月1日
 */
public class SystemPath {

	public static String getSysPath()
	{
		String path= Thread.currentThread().getContextClassLoader().getResource("").toString();
		String temp=path.replaceFirst("file:/", "").replaceFirst("WEB-INF/classes/", "");
		String separator= System.getProperty("file.separator");
		String resultPath=temp.replaceAll("/", separator+separator);
		return resultPath;
	}
	public static String getClassPath()
	{
		String path= Thread.currentThread().getContextClassLoader().getResource("").toString();
		String temp=path.replaceFirst("file:/", "");
		String separator= System.getProperty("file.separator");
		String resultPath=temp.replaceAll("/", separator+separator);
		return resultPath;
	}
	public static String getSystempPath()
	{
		return System.getProperty("java.io.tmpdir");
	}
	public static String getSeparator()
	{
		return System.getProperty("file.separator");
	}
	
	public static void main(String[] args){
		com.baiHoo.core.util.LogUtil.info(getSysPath());
		com.baiHoo.core.util.LogUtil.info(System.getProperty("java.io.tmpdir"));
		com.baiHoo.core.util.LogUtil.info(getSeparator());
		com.baiHoo.core.util.LogUtil.info(getClassPath());
	}
}
