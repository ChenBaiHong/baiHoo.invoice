package com.baiHoo.tag.core.easyui;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import com.baiHoo.core.util.ListtoMenu;
import com.baiHoo.web.system.pojo.base.TSFunction;

/**
 * 
 *<p>Title: MenuTag</p>
 *<p>Description: 
 *
 * 类描述：菜单标签
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年5月2日
 */
public class MenuTag extends TagSupport {
	private static final long serialVersionUID = 1L;
	protected String style="easyui";//菜单样式
	protected List<TSFunction> parentFun;//一级菜单
	protected List<TSFunction> childFun;//二级菜单
	protected Map<Integer, List<TSFunction>> menuFun;//菜单Map
	
	
	public void setParentFun(List<TSFunction> parentFun) {
		this.parentFun = parentFun;
	}

	public void setChildFun(List<TSFunction> childFun) {
		this.childFun = childFun;
	}

	public int doStartTag() throws JspTagException {
		return EVAL_PAGE;
	}

	public int doEndTag() throws JspTagException {
		try {
			JspWriter out = this.pageContext.getOut();
			out.print(end().toString());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

	public StringBuffer end() {	
		StringBuffer sb = new StringBuffer();
		if(style.equals("easyui"))
		{	sb.append("<div id=\"nav\" style=\"display:none;\" class=\"easyui-accordion\" fit=\"true\" border=\"false\">");
			sb.append(ListtoMenu.getEasyuiMultistageTree(menuFun));
			sb.append("</div>");
		}
		if(style.equals("bootstrap"))
		{
			sb.append(ListtoMenu.getBootMenu(parentFun, childFun));
		}
		if(style.equals("json"))
		{
			sb.append("<script type=\"text/javascript\">");
			sb.append("var _menus="+ListtoMenu.getMenu(parentFun, childFun));
			sb.append("</script>");
		}
		if(style.equals("june_bootstrap"))
		{
			sb.append(ListtoMenu.getBootstrapMenu(menuFun));
		}
		return sb;
	}
	public void setStyle(String style) {
		this.style = style;
	}

	public void setMenuFun(Map<Integer, List<TSFunction>> menuFun) {
		this.menuFun = menuFun;
	}

	

}
