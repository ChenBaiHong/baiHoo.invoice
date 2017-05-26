package com.baiHoo.web.system.pojo.base;

import java.util.Map;

/**
 * 
 *<p>Title: Client</p>
 *<p>Description: 
 *
 * 在线用户对象
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class Client implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private TSUser user;

	private Map<String, TSFunction> functions;
	/**
	 * 用户IP
	 */
	private java.lang.String ip;
	/**
	 *登录时间
	 */
	private java.util.Date logindatetime;

	public TSUser getUser() {
		return user;
	}

	public void setUser(TSUser user) {
		this.user = user;
	}


	public Map<String, TSFunction> getFunctions() {
		return functions;
	}

	public void setFunctions(Map<String, TSFunction> functions) {
		this.functions = functions;
	}

	public java.lang.String getIp() {
		return ip;
	}

	public void setIp(java.lang.String ip) {
		this.ip = ip;
	}

	public java.util.Date getLogindatetime() {
		return logindatetime;
	}

	public void setLogindatetime(java.util.Date logindatetime) {
		this.logindatetime = logindatetime;
	}


}
