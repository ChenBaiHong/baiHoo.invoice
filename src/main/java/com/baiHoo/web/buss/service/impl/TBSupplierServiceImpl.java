package com.baiHoo.web.buss.service.impl;

import java.io.Serializable;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baiHoo.core.common.service.impl.CommonServiceImpl;
import com.baiHoo.web.buss.entity.base.TBSupplierEntity;
import com.baiHoo.web.buss.service.TBSupplierServiceI;

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
@Service("tBSupplierService")
@Transactional
public class TBSupplierServiceImpl extends CommonServiceImpl implements TBSupplierServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((TBSupplierEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((TBSupplierEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((TBSupplierEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(TBSupplierEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(TBSupplierEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(TBSupplierEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,TBSupplierEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{suppliername}",String.valueOf(t.getSuppliername()));
 		sql  = sql.replace("#{supplieraddr}",String.valueOf(t.getSupplieraddr()));
 		sql  = sql.replace("#{suppliertel}",String.valueOf(t.getSuppliertel()));
 		sql  = sql.replace("#{supplieremail}",String.valueOf(t.getSupplieremail()));
 		sql  = sql.replace("#{suppliernum}",String.valueOf(t.getSuppliernum()));
 		sql  = sql.replace("#{contactperson}",String.valueOf(t.getContactperson()));
 		sql  = sql.replace("#{persontel}",String.valueOf(t.getPersontel()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}