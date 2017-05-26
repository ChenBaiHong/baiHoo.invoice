package com.baiHoo.web.buss.service;

import java.io.Serializable;

import com.baiHoo.core.common.service.CommonService;
import com.baiHoo.web.buss.entity.base.TBGoodsEntity;
import com.baiHoo.web.buss.entity.base.TBStockEntity;

/**
 * 
 *<p>Title: TBBranchController</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public interface TBGoodsServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity, TBStockEntity tBStock);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(TBGoodsEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(TBGoodsEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(TBGoodsEntity t);
}
