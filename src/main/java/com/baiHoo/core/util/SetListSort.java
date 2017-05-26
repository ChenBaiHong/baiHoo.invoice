package com.baiHoo.core.util;

import java.util.Comparator;

import com.baiHoo.web.system.pojo.base.TSFunction;


/**
 * 
 *<p>Title: SetListSort</p>
 *<p>Description: 
 *
 *	int比较器
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date 2017年5月1日
 */

@SuppressWarnings("all")
public class SetListSort implements Comparator {
	/**
	 * 菜单排序比较器
	 */
	public int compare(Object o1, Object o2) {
		TSFunction c1 = (TSFunction) o1;
		TSFunction c2 = (TSFunction) o2;
		if (c1.getFunctionOrder() != null && c2.getFunctionOrder() != null) {
			int c1order = oConvertUtils.getInt(c1.getFunctionOrder().substring(c1.getFunctionOrder().indexOf("fun")+3));
			int c2order = oConvertUtils.getInt(c2.getFunctionOrder().substring(c2.getFunctionOrder().indexOf("fun"))+3);
			if (c1order > c2order) {
				return 1;
			} else {
				return -1;
			}
		} else {
			return 1;
		}

	}
}