package com.baiHoo.core.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * 
 *<p>Title: JeecgEntityTitle</p>
 *<p>Description: 
 *
 *JEECG[1]  （J2EE Code Generation）是一款基于代码生成器的免费开源的快速开发平台。使用JEECG可以简单快速地开发出企业级的Web应用系统。
 *
 *生成实体的名字
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年4月30日
 */
@Retention(RetentionPolicy.RUNTIME)
public @interface JeecgEntityTitle {
	  String name();
}
