package com.baiHoo.tag.core.easyui;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * 
 *<p>Title: DataGridFunOptTag</p>
 *<p>Description: 
 *
 *	类描述：列表自定义函数操作项处理标签
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年5月2日
 */

@SuppressWarnings("all")
public class DataGridFunOptTag extends TagSupport {
	protected String title;
	private String exp;//判断链接是否显示的表达式
	private String funname;//自定义函数名称
	private String operationCode;//按钮的操作Code
	public int doStartTag() throws JspTagException {
		return EVAL_PAGE;
	}
	public int doEndTag() throws JspTagException {
		Tag t = findAncestorWithClass(this, DataGridTag.class);
		DataGridTag parent = (DataGridTag) t;
		parent.setFunUrl(title,exp,funname,operationCode);
		return EVAL_PAGE;
	}
	public void setFunname(String funname) {
		this.funname = funname;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setOperationCode(String operationCode) {
		this.operationCode = operationCode;
	}

}
