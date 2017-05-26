package com.baiHoo.tag.core.easyui;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import com.baiHoo.core.constant.Globals;
import com.baiHoo.core.util.ResourceUtil;

/**
 * 
 *<p>Title: AuthFilterTag</p>
 *<p>Description: 
 *
 *列表按钮权限过滤
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年5月1日
 */

@SuppressWarnings("all")
public class AuthFilterTag extends TagSupport{
	/**列表容器的ID*/
	protected String name;
	
	public int doStartTag() throws JspException {
		return super.doStartTag();
	}
	
	public int doEndTag() throws JspException {
		try {
			JspWriter out = this.pageContext.getOut();
				out.print(end().toString());
				out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
		
	}
	protected Object end() {
		StringBuilder out = new StringBuilder();
		getAuthFilter(out);
		return out;
	}
	/**
	 * 获取隐藏按钮的JS代码
	 * @param out
	 */
	@SuppressWarnings("unchecked")
	protected void getAuthFilter(StringBuilder out) {
		out.append("<script type=\"text/javascript\">");
		out.append("$(document).ready(function(){");
		List<String> nolist = (List<String>) super.pageContext.getRequest().getAttribute("noauto_operationCodes");
		if(ResourceUtil.getSessionUserName().getUserName().equals("admin")|| !Globals.BUTTON_AUTHORITY_CHECK){
		}else{
			if(nolist!=null&&nolist.size()>0){
				for(String s:nolist){
					out.append("$(\"#"+name+"\").find(\"#"+s.replaceAll(" ", "")+"\").hide();");
				}
			}
		}
		out.append("});");
		out.append("</script>");
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
