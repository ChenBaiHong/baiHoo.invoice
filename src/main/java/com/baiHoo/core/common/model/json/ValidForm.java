package com.baiHoo.core.common.model.json;


/**
 * 
 *<p>Title: ValidForm</p>
 *<p>Description: 
 *
 * $.ajax后需要接受的JSON
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class ValidForm {

	private String status ="y";// 是否成功
	private String info = "验证通过";//提示信息
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
}
