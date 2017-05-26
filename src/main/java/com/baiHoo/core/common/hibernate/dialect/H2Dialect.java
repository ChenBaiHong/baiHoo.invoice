package com.baiHoo.core.common.hibernate.dialect;

/**
 * 
 *<p>Title: H2Dialect</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class H2Dialect extends Dialect
{
  public boolean supportsLimit()
  {
    return true;
  }

  public String getLimitString(String sql, int offset, String offsetPlaceholder, int limit, String limitPlaceholder)
  {
    return new StringBuffer(sql.length() + 40).append(sql).append(" limit " + limitPlaceholder).toString();
  }

  public boolean supportsLimitOffset()
  {
    return true;
  }
}