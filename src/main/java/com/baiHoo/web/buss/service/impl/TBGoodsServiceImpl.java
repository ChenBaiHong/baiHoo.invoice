package com.baiHoo.web.buss.service.impl;

import java.io.Serializable;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baiHoo.core.common.service.impl.CommonServiceImpl;
import com.baiHoo.web.buss.entity.base.TBGoodsEntity;
import com.baiHoo.web.buss.entity.base.TBStockEntity;
import com.baiHoo.web.buss.service.TBGoodsServiceI;

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
@Service("tBGoodsService")
@Transactional
public class TBGoodsServiceImpl extends CommonServiceImpl implements TBGoodsServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((TBGoodsEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity, TBStockEntity tBStock) {
 		Serializable t = super.save(entity);
 		tBStock.setGoodsid(t.toString());
 		super.save(tBStock);
 		//执行新增操作配置的sql增强
 		this.doAddSql((TBGoodsEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((TBGoodsEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(TBGoodsEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(TBGoodsEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(TBGoodsEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,TBGoodsEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{goodsname}",String.valueOf(t.getGoodsname()));
 		sql  = sql.replace("#{goodstype}",String.valueOf(t.getGoodstype()));
 		sql  = sql.replace("#{costprice}",String.valueOf(t.getCostprice()));
 		sql  = sql.replace("#{remark}",String.valueOf(t.getRemark()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}