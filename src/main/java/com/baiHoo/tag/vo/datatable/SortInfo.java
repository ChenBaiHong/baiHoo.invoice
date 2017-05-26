package com.baiHoo.tag.vo.datatable;

/**
 * 
 *<p>Title: SortInfo</p>
 *<p>Description: 
 *
 *	排序值
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年5月2日
 */
public class SortInfo {

	/**
	 * 排序列名
	 */
	private Integer columnId;
	/**
	 * desc or asc
	 */
	private SortDirection sortOrder;

	/**
	 * @return 排序列名
	 */
	public Integer getColumnId() {
		return columnId;
	}

	/**
	 * @param columnId
	 *            排序列名
	 */
	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}

	/**
	 * @return desc or asc
	 */
	public SortDirection getSortOrder() {
		return sortOrder;
	}

	/**
	 * @param sortOrder
	 *            desc or asc
	 */
	public void setSortOrder(SortDirection sortOrder) {
		this.sortOrder = sortOrder;
	}

}
