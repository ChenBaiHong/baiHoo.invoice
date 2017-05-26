package com.baiHoo.core.common.model.json;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

/**
 * 
 *<p>Title: ProjectInfo</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@JsonIgnoreProperties(value = { "hibernateLazyInitializer" })
public class ProjectInfo {
	
	private Integer gid;//
	private String name;//名称（项目）
	private String geom;
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGeom() {
		return geom;
	}
	public void setGeom(String geom) {
		this.geom = geom;
	}
	
	
}
