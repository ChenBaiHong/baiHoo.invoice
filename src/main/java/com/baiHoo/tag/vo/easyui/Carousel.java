package com.baiHoo.tag.vo.easyui;

/**
 * 
 *<p>Title: Carousel</p>
 *<p>Description: 
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年5月2日
 */
public class Carousel {
	private String path; //图片路径
	private String message; //图片信息描述
	private boolean active=false; //当前显示项
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	 

}
