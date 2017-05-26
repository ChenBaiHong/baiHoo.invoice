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
 * 入库单表
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@Entity
@Table(name = "T_B_PURCHASE", schema = "")
@SuppressWarnings("serial")
public class TBPurchaseEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**货品编号*/
	private java.lang.String goodsid;
	/**货品批号*/
	private java.lang.String goodsnumber;
	/**数量*/
	private java.lang.String goodscount;
	/**单价*/
	private java.math.BigDecimal price;
	/**状态*/
	private java.lang.String status;
	/**供应商名称*/
	private java.lang.String suppliername;
	/**联系人*/
	private java.lang.String contactperson;
	/**联系人电话*/
	private java.lang.String persontel;
	/**供应商编号*/
	private java.lang.String supplierid;
	/**货品名称*/
	private java.lang.String goodsname;
	/**备注*/
	private java.lang.String remark;
	
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
	 *@return: java.lang.String  货品编号
	 */
	@Column(name ="GOODSID",nullable=true,length=36)
	public java.lang.String getGoodsid(){
		return this.goodsid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  货品编号
	 */
	public void setGoodsid(java.lang.String goodsid){
		this.goodsid = goodsid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  货品批号
	 */
	@Column(name ="GOODSNUMBER",nullable=true,length=20)
	public java.lang.String getGoodsnumber(){
		return this.goodsnumber;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  货品批号
	 */
	public void setGoodsnumber(java.lang.String goodsnumber){
		this.goodsnumber = goodsnumber;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  数量
	 */
	@Column(name ="GOODSCOUNT",nullable=true,length=10)
	public java.lang.String getGoodscount(){
		return this.goodscount;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  数量
	 */
	public void setGoodscount(java.lang.String goodscount){
		this.goodscount = goodscount;
	}
	/**
	 *方法: 取得java.math.BigDecimal
	 *@return: java.math.BigDecimal  单价
	 */
	@Column(name ="PRICE",nullable=true,scale=2,length=10)
	public java.math.BigDecimal getPrice(){
		return this.price;
	}

	/**
	 *方法: 设置java.math.BigDecimal
	 *@param: java.math.BigDecimal  单价
	 */
	public void setPrice(java.math.BigDecimal price){
		this.price = price;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  状态
	 */
	@Column(name ="STATUS",nullable=true,length=1)
	public java.lang.String getStatus(){
		return this.status;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  状态
	 */
	public void setStatus(java.lang.String status){
		this.status = status;
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
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  供应商编号
	 */
	@Column(name ="SUPPLIERID",nullable=true,length=36)
	public java.lang.String getSupplierid(){
		return this.supplierid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  供应商编号
	 */
	public void setSupplierid(java.lang.String supplierid){
		this.supplierid = supplierid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  货品名称
	 */
	@Column(name ="GOODSNAME",nullable=true)
	public java.lang.String getGoodsname(){
		return this.goodsname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  货品名称
	 */
	public void setGoodsname(java.lang.String goodsname){
		this.goodsname = goodsname;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  备注
	 */
	@Column(name ="REMARK",nullable=true,length=100)
	public java.lang.String getRemark(){
		return this.remark;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  备注
	 */
	public void setRemark(java.lang.String remark){
		this.remark = remark;
	}
}
