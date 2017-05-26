package com.baiHoo.core.extend.hqlsearch.parse;

import com.baiHoo.core.common.hibernate.qbc.CriteriaQuery;

/**
 * 
 *<p>Title: IHqlParse</p>
 *<p>Description: 
 *
 * 解析拼装
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public interface IHqlParse {
	/**
	 * 单值组装
	 * 
	 * @date 2014年1月17日
	 * @param name
	 * @param value
	 */
	public void addCriteria(CriteriaQuery cq, String name, Object value);

	/**
	 * 范围组装
	 * 
	 * @date 2014年1月17日
	 * @param name
	 * @param value
	 * @param beginValue
	 * @param endValue
	 */
	public void addCriteria(CriteriaQuery cq, String name, Object value,
			String beginValue, String endValue);

}
