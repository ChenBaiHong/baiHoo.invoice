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
 * 供应商
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@Entity
@Table(name = "T_B_SUPPLIER", schema = "")
@SuppressWarnings("serial")
public class TBSupplierEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**供应商名称*/
	private java.lang.String suppliername;
	/**供应商地址*/
	private java.lang.String supplieraddr;
	/**供应商电话*/
	private java.lang.String suppliertel;
	/**供应商Email*/
	private java.lang.String supplieremail;
	/**企业注册号*/
	private java.lang.String suppliernum;
	/**联系人*/
	private java.lang.String contactperson;
	/**联系人电话*/
	private java.lang.String persontel;
	
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
	 *@return: java.lang.String  供应商名称
	 */
	@Column(name ="SUPPLIERNAME",nullable=true,length=20)
	public java.lang.String getSuppliername(){
		return this.suppliername;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  供应商名称
	 */
	public void setSuppliername(java.lang.String suppliername){
		this.suppliername = suppliername;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  供应商地址
	 */
	@Column(name ="SUPPLIERADDR",nullable=true,length=26)
	public java.lang.String getSupplieraddr(){
		return this.supplieraddr;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  供应商地址
	 */
	public void setSupplieraddr(java.lang.String supplieraddr){
		this.supplieraddr = supplieraddr;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  供应商电话
	 */
	@Column(name ="SUPPLIERTEL",nullable=true,length=15)
	public java.lang.String getSuppliertel(){
		return this.suppliertel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  供应商电话
	 */
	public void setSuppliertel(java.lang.String suppliertel){
		this.suppliertel = suppliertel;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  供应商Email
	 */
	@Column(name ="SUPPLIEREMAIL",nullable=true,length=30)
	public java.lang.String getSupplieremail(){
		return this.supplieremail;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  供应商Email
	 */
	public void setSupplieremail(java.lang.String supplieremail){
		this.supplieremail = supplieremail;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  企业注册号
	 */
	@Column(name ="SUPPLIERNUM",nullable=true,length=20)
	public java.lang.String getSuppliernum(){
		return this.suppliernum;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  企业注册号
	 */
	public void setSuppliernum(java.lang.String suppliernum){
		this.suppliernum = suppliernum;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  联系人
	 */
	@Column(name ="CONTACTPERSON",nullable=true,length=10)
	public java.lang.String getContactperson(){
		return this.contactperson;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  联系人
	 */
	public void setContactperson(java.lang.String contactperson){
		this.contactperson = contactperson;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  联系人电话
	 */
	@Column(name ="PERSONTEL",nullable=true,length=15)
	public java.lang.String getPersontel(){
		return this.persontel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  联系人电话
	 */
	public void setPersontel(java.lang.String persontel){
		this.persontel = persontel;
	}
}
