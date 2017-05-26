package com.baiHoo.web.buss.service.impl;

import java.io.Serializable;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baiHoo.core.common.service.impl.CommonServiceImpl;
import com.baiHoo.web.buss.entity.base.TBPurchaseEntity;
import com.baiHoo.web.buss.service.TBPurchaseServiceI;

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
@Service("tBPurchaseService")
@Transactional
public class TBPurchaseServiceImpl extends CommonServiceImpl implements TBPurchaseServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((TBPurchaseEntity)entity);
 	}
 	
 	public <T> Serializable save(TBPurchaseEntity tbp) {
 		Serializable t = super.save(tbp);
 		//执行新增操作配置的sql增强
 		this.doAddSql(tbp);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((TBPurchaseEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(TBPurchaseEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(TBPurchaseEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(TBPurchaseEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,TBPurchaseEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{goodsid}",String.valueOf(t.getGoodsid()));
 		sql  = sql.replace("#{goodsnumber}",String.valueOf(t.getGoodsnumber()));
 		sql  = sql.replace("#{goodscount}",String.valueOf(t.getGoodscount()));
 		sql  = sql.replace("#{price}",String.valueOf(t.getPrice()));
 		sql  = sql.replace("#{status}",String.valueOf(t.getStatus()));
 		sql  = sql.replace("#{suppliername}",String.valueOf(t.getSuppliername()));
 		sql  = sql.replace("#{contactperson}",String.valueOf(t.getContactperson()));
 		sql  = sql.replace("#{persontel}",String.valueOf(t.getPersontel()));
 		sql  = sql.replace("#{supplierid}",String.valueOf(t.getSupplierid()));
 		sql  = sql.replace("#{goodsname}",String.valueOf(t.getGoodsname()));
 		sql  = sql.replace("#{remark}",String.valueOf(t.getRemark()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}

	public boolean doSaveorUpdateStock(TBPurchaseEntity tbp) {
		String sql = "update T_B_STOCK set totalcount=(totalcount+" + tbp.getGoodscount() + ") where goodsid='" + tbp.getGoodsid() +"'";
		super.saveOrUpdate(tbp);
		super.updateBySqlString(sql);
		return true;
	}
}