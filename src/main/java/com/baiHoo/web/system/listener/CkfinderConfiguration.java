package com.baiHoo.web.system.listener;

import javax.servlet.ServletConfig;

import com.baiHoo.core.util.ResourceUtil;
import com.ckfinder.connector.configuration.Configuration;

/**
 * 
 *<p>Title: CkfinderConfiguration</p>
 *<p>Description: 
 *
 * ckfinder监听器
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class CkfinderConfiguration extends Configuration {

	String path = "";

	public CkfinderConfiguration(ServletConfig servletConfig) {
		super(servletConfig);
		path = servletConfig.getServletContext().getContextPath();
	}

	
	public void init() throws Exception {
		super.init();
		String files = ResourceUtil.getConfigByName("ck.userfiles");
		if (files.contains("http://"))
			this.baseURL = files;
		else
			this.baseURL = path + "/" + files + "/";
		this.baseDir = ResourceUtil.getConfigByName("ck.baseDir");
	}

}
