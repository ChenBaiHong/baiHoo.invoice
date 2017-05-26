package com.baiHoo.web.buss.service.impl;

import java.io.Serializable;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baiHoo.core.common.service.impl.CommonServiceImpl;
import com.baiHoo.web.buss.entity.base.TBShipEntity;
import com.baiHoo.web.buss.service.TBShipServiceI;

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
@Service("tBShipService")
@Transactional
public class TBShipServiceImpl extends CommonServiceImpl implements TBShipServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((TBShipEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((TBShipEntity)entity);
 		return t;
 	}
 	
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((TBShipEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(TBShipEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(TBShipEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(TBShipEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,TBShipEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{goodsid}",String.valueOf(t.getGoodsid()));
 		sql  = sql.replace("#{goodsname}",String.valueOf(t.getGoodsname()));
 		sql  = sql.replace("#{goodscount}",String.valueOf(t.getGoodscount()));
 		sql  = sql.replace("#{status}",String.valueOf(t.getStatus()));
 		sql  = sql.replace("#{branchid}",String.valueOf(t.getBranchid()));
 		sql  = sql.replace("#{branchadd}",String.valueOf(t.getBranchadd()));
 		sql  = sql.replace("#{shipdate}",String.valueOf(t.getShipdate()));
 		sql  = sql.replace("#{remark}",String.valueOf(t.getRemark()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}

	public boolean doSaveorUpdateStock(TBShipEntity t) {
		String sql = "update T_B_STOCK set totalcount=(totalcount-" + t.getGoodscount() + ") where goodsid='" + t.getGoodsid() +"'";
		super.saveOrUpdate(t);
		super.updateBySqlString(sql);
		return true;
	}
}