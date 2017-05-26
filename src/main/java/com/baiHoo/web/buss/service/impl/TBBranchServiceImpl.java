package com.baiHoo.web.buss.service.impl;

import java.io.Serializable;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baiHoo.core.common.service.impl.CommonServiceImpl;
import com.baiHoo.web.buss.entity.base.TBBranchEntity;
import com.baiHoo.web.buss.service.TBBranchServiceI;

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
@Service("tBBranchService")
@Transactional
public class TBBranchServiceImpl extends CommonServiceImpl implements TBBranchServiceI {

	
 	public <T> void delete(T entity) {
 		super.delete(entity);
 		//执行删除操作配置的sql增强
		this.doDelSql((TBBranchEntity)entity);
 	}
 	
 	public <T> Serializable save(T entity) {
 		Serializable t = super.save(entity);
 		//执行新增操作配置的sql增强
 		this.doAddSql((TBBranchEntity)entity);
 		return t;
 	}
 	
 	public <T> void saveOrUpdate(T entity) {
 		super.saveOrUpdate(entity);
 		//执行更新操作配置的sql增强
 		this.doUpdateSql((TBBranchEntity)entity);
 	}
 	
 	/**
	 * 默认按钮-sql增强-新增操作
	 * @param id
	 * @return
	 */
 	public boolean doAddSql(TBBranchEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-更新操作
	 * @param id
	 * @return
	 */
 	public boolean doUpdateSql(TBBranchEntity t){
	 	return true;
 	}
 	/**
	 * 默认按钮-sql增强-删除操作
	 * @param id
	 * @return
	 */
 	public boolean doDelSql(TBBranchEntity t){
	 	return true;
 	}
 	
 	/**
	 * 替换sql中的变量
	 * @param sql
	 * @return
	 */
 	public String replaceVal(String sql,TBBranchEntity t){
 		sql  = sql.replace("#{id}",String.valueOf(t.getId()));
 		sql  = sql.replace("#{branchadd}",String.valueOf(t.getBranchadd()));
 		sql  = sql.replace("#{branchtel}",String.valueOf(t.getBranchtel()));
 		sql  = sql.replace("#{leadername}",String.valueOf(t.getLeadername()));
 		sql  = sql.replace("#{leadertel}",String.valueOf(t.getLeadertel()));
 		sql  = sql.replace("#{zipcode}",String.valueOf(t.getZipcode()));
 		sql  = sql.replace("#{UUID}",UUID.randomUUID().toString());
 		return sql;
 	}
}