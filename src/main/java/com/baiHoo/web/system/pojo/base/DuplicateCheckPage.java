package com.baiHoo.web.system.pojo.base;

/**
 
 */
/**
 * 
 *<p>Title: DuplicateCheckPage</p>
 *<p>Description: 
 *
 *update-begin--Author:baiHoo  Date: for：[TASK#63]UI库常用控件参考示例【重复校验】
 *update-end--Author:baiHoo  Date: for：[TASK#63]UI库常用控件参考示例【重复校验】
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@SuppressWarnings("serial")
public class DuplicateCheckPage   implements java.io.Serializable {

	/**
	 * 表名
	 */
	private String tableName;
	
	/**
	 * 字段名
	 */
	private String fieldName;
	
	/**
	 * 字段值
	 */
	private String fieldVlaue;
	
	/**编辑数据ID*/
	private String rowObid;

	public String getRowObid() {
		return rowObid;
	}

	public void setRowObid(String rowObid) {
		this.rowObid = rowObid;
	}

	public String getTableName() {
		return tableName;
	}

	public String getFieldName() {
		return fieldName;
	}

	public String getFieldVlaue() {
		return fieldVlaue;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	public void setFieldVlaue(String fieldVlaue) {
		this.fieldVlaue = fieldVlaue;
	}

}