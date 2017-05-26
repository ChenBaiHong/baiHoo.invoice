package com.baiHoo.core.common.model.json;

/**
 * 
 *<p>Title: ComboBox</p>
 *<p>Description: 
 *
 *	后台向前台返回JSON，用于easyui的datagrid
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class ComboBox {

	private String id;
	private String text;
	private boolean selected;
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public boolean isSelected() {
		return selected;
	}

	public void setSelected(boolean selected) {
		this.selected = selected;
	}
}
