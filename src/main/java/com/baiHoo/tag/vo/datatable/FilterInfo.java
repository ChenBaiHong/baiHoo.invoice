package com.baiHoo.tag.vo.datatable;

/**
 * 
 *<p>Title: FilterInfo</p>
 *<p>Description: 
 *
 *	过滤查找
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年5月2日
 */
public class FilterInfo {

	/**
	 * 查找的列名
	 */
	private String name;
	/**
	 * 查找的值
	 */
	private String search;

	/**
	 * @return 查找的列名
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            查找的列名
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return 查找的值
	 */
	public String getSearch() {
		return search;
	}

	/**
	 * @param search
	 *            查找的值
	 */
	public void setSearch(String search) {
		this.search = search;
	}

}
