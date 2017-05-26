package com.baiHoo.web.buss.entity.base;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 
 *<p>Title: TBBranchController</p>
 *<p>Description: 
 *
 *	分公司表
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@Entity
@Table(name = "T_B_BRANCH", schema = "")
@SuppressWarnings("serial")
public class TBBranchEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**分公司地址*/
	private java.lang.String branchadd;
	/**分公司电话*/
	private java.lang.String branchtel;
	/**负责人姓名*/
	private java.lang.String leadername;
	/**负责人电话*/
	private java.lang.String leadertel;
	/**邮编*/
	private java.lang.String zipcode;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  分公司地址
	 */
	@Column(name ="BRANCHADD",nullable=true,length=20)
	public java.lang.String getBranchadd(){
		return this.branchadd;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  分公司地址
	 */
	public void setBranchadd(java.lang.String branchadd){
		this.branchadd = branchadd;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  分公司电话
	 */
	@Column(name ="BRANCHTEL",nullable=true,length=13)
	public java.lang.String getBranchtel(){
		return this.branchtel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  分公司电话
	 */
	public void setBranchtel(java.lang.String branchtel){
		this.branchtel = branchtel;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  负责人姓名
	 */
	@Column(name ="LEADERNAME",nullable=true,length=10)
	public java.lang.String getLeadername(){
		return this.leadername;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  负责人姓名
	 */
	public void setLeadername(java.lang.String leadername){
		this.leadername = leadername;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  负责人电话
	 */
	@Column(name ="LEADERTEL",nullable=true,length=13)
	public java.lang.String getLeadertel(){
		return this.leadertel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  负责人电话
	 */
	public void setLeadertel(java.lang.String leadertel){
		this.leadertel = leadertel;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  邮编
	 */
	@Column(name ="ZIPCODE",nullable=true,length=8)
	public java.lang.String getZipcode(){
		return this.zipcode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  邮编
	 */
	public void setZipcode(java.lang.String zipcode){
		this.zipcode = zipcode;
	}
}
