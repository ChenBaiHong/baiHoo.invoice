package com.baiHoo.web.buss.service;

import java.io.Serializable;

import com.baiHoo.core.common.service.CommonService;
import com.baiHoo.web.buss.entity.base.TBShipEntity;

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
public interface TBShipServiceI extends CommonService{
	
 	public <T> void delete(T entity);
 	
 	public <T> Serializable save(T entity);
 	
 	public <T> void saveOrUpdate(T entity);
 	
 	/**
 	 * 更新出库表和库存表
 	 * @param tbp
 	 * @param tbs
 	 * @return
 	 */
 	public boolean doSaveorUpdateStock(TBShipEntity t);
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(TBShipEntity t);
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(TBShipEntity t);
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(TBShipEntity t);
}
