package com.baiHoo.core.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * 
 * 
 *<p>Title: ContextHolderUtils</p>
 *<p>Description: 
 *
 *工程上下文工具类
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年4月30日
 */
public class ContextHolderUtils {
	/**
	 * SpringMvc下获取request
	 * 
	 * @return
	 */
	public static HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		return request;

	}
	/**
	 * SpringMvc下获取session
	 * 
	 * @return
	 */
	public static HttpSession getSession() {
		HttpSession session = getRequest().getSession();
		return session;

	}

}
