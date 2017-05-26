package com.baiHoo.core.util;

/**
 * 
 *<p>Title: ImportUtil</p>
 *<p>Description: </p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年4月30日
 */

@SuppressWarnings("all")
public class ImportUtil {
	/**
	 * 得到实体类
	 * @param fullentity
	 * @return
	 */
	 public static  Class getEntityClass(String fullentity){
		 Class entityClass = null;
		try {
			entityClass = (Class) Class.forName(fullentity);
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		} 
		 return entityClass;
	 }  
	 
	 
}
