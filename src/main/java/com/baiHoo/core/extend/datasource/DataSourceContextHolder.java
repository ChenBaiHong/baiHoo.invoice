package com.baiHoo.core.extend.datasource;

/**
 * 
 *<p>Title: DataSourceContextHolder</p>
 *<p>Description: 
 *
 *功能：获得和设置上下文环境的类，主要负责改变上下文数据源的名称
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */

@SuppressWarnings("all")
public class DataSourceContextHolder {

	private static final ThreadLocal contextHolder=new ThreadLocal();
	
	public static void setDataSourceType(DataSourceType dataSourceType){
		contextHolder.set(dataSourceType);
	}
	
	public static DataSourceType getDataSourceType(){
		return (DataSourceType) contextHolder.get();
	}
	
	public static void clearDataSourceType(){
		contextHolder.remove();
	}
	
}
