package com.baiHoo.core.common.hibernate.dialect;

/**
 * 
 *<p>Title: Dialect</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class Dialect
{
  public boolean supportsLimit()
  {
    return false;
  }

  public boolean supportsLimitOffset()
  {
    return supportsLimit();
  }

  public String getCountSql(String sql)
  {
    String tmp = "select count(1) amount from (" + sql + ")  a";
    return tmp;
  }

  public String getLimitString(String sql, int offset, int limit)
  {
    return getLimitString(sql, offset, Integer.toString(offset), limit, Integer.toString(limit));
  }

  public String getLimitString(String sql, int offset, String offsetPlaceholder, int limit, String limitPlaceholder)
  {
    throw new UnsupportedOperationException("paged queries not supported");
  }
}