package com.baiHoo.web.buss.service;

import java.io.Serializable;

import com.baiHoo.core.common.service.CommonService;
import com.baiHoo.web.buss.entity.base.TBPurchaseEntity;

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
public interface TBPurchaseServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(TBPurchaseEntity t);
 	
 	/**
 	 * 更新入库表和库存表
 	 * @param tbp
 	 * @param tbs
 	 * @return
 	 */
 	public boolean doSaveorUpdateStock(TBPurchaseEntity tbp);
 	
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(TBPurchaseEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(TBPurchaseEntity t);
}
