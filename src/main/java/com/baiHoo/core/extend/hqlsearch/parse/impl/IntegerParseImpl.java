package com.baiHoo.core.extend.hqlsearch.parse.impl;

import com.baiHoo.core.common.hibernate.qbc.CriteriaQuery;
import com.baiHoo.core.extend.hqlsearch.HqlGenerateUtil;
import com.baiHoo.core.extend.hqlsearch.parse.IHqlParse;

/**
 * 
 *<p>Title: IntegerParseImpl</p>
 *<p>Description: 
 *
 *Integer解析拼装起
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class IntegerParseImpl implements IHqlParse {

	
	public void addCriteria(CriteriaQuery cq, String name, Object value) {
		if (HqlGenerateUtil.isNotEmpty(value))
			cq.eq(name, value);
	}

	
	public void addCriteria(CriteriaQuery cq, String name, Object value,
			String beginValue, String endValue) {
		if (HqlGenerateUtil.isNotEmpty(beginValue)) {
			cq.ge(name, Integer.parseInt(beginValue));
		}
		if (HqlGenerateUtil.isNotEmpty(endValue)) {
			cq.le(name, Integer.parseInt(endValue));
		}
		if (HqlGenerateUtil.isNotEmpty(value))
			cq.eq(name, value);
	}

}
