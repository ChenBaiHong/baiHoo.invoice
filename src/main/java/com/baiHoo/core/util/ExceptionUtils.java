package com.baiHoo.core.util;

import com.baiHoo.core.common.exception.BusinessException;

/**
 * 
 *<p>Title: ExceptionUtils</p>
 *<p>Description: </p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年4月30日
 */
public class ExceptionUtils {

	private ExceptionUtils(){
		//no instance
	}
	
	
	/**
	 * 如果目标为空则抛出异常
	 * @param target
	 * @param errorMessage
	 */
	public static void throwIfNull(Object target,String errorMessage){
		if(target==null){
			throw new BusinessException(errorMessage);
		}
	}
	
	/**
	 * 如果目标为空则抛出异常
	 * 本方法空指针安全
	 * 2009-11-3
	 * @param target
	 * @param errorMessage
	 */
	public static void throwIfEmpty(String target,String errorMessage)
	{
		if(target==null || target.equals("")){
			throw new BusinessException(errorMessage);
		}
	}
	
}
