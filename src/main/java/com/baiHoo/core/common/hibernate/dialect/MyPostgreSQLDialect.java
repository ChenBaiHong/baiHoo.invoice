package com.baiHoo.core.common.hibernate.dialect;

import org.hibernate.dialect.PostgreSQLDialect;

/**
 * 
 *<p>Title: MyPostgreSQLDialect</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */

@SuppressWarnings("all")
public class MyPostgreSQLDialect extends PostgreSQLDialect {

	
	public boolean useInputStreamToInsertBlob() {
		// TODO Auto-generated method stub
		return true;
	}

}
