package com.baiHoo.core.extend.hqlsearch.parse.impl;

import com.baiHoo.core.common.hibernate.qbc.CriteriaQuery;
import com.baiHoo.core.extend.hqlsearch.HqlGenerateUtil;
import com.baiHoo.core.extend.hqlsearch.parse.IHqlParse;

/**
 * 
 *<p>Title: DoubleParseImpl</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class DoubleParseImpl implements IHqlParse {

	
	public void addCriteria(CriteriaQuery cq, String name, Object value) {
		if (HqlGenerateUtil.isNotEmpty(value))
			cq.eq(name, value);
	}

	
	public void addCriteria(CriteriaQuery cq, String name, Object value,
			String beginValue, String endValue) {
		if (HqlGenerateUtil.isNotEmpty(beginValue)) {
			cq.ge(name, Double.parseDouble(beginValue));
		}
		if (HqlGenerateUtil.isNotEmpty(endValue)) {
			cq.le(name, Double.parseDouble(endValue));
		}
		if (HqlGenerateUtil.isNotEmpty(value)) {
			cq.eq(name, value);
		}
	}

}
