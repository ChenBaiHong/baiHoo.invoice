package com.baiHoo.web.system.controller.core;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.baiHoo.core.common.controller.BaseController;

/**
 * 
 *<p>Title: DataSourceController</p>
 *<p>Description: 
 *
 *	配置信息处理类
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@SuppressWarnings("all")
@Controller
@RequestMapping("/dataSourceController")
public class DataSourceController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(DataSourceController.class);

	/**
	 * 跳转到连接池监控页面
	 * 
	 * @return
	 */
	@RequestMapping(params = "goDruid")
	public ModelAndView goDruid() {
		return new ModelAndView("/system/druid/index");
	}
		

}
