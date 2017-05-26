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
 * 库存表
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@Entity
@Table(name = "T_B_STOCK", schema = "")
@SuppressWarnings("serial")
public class TBStockEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**货品编号*/
	private java.lang.String goodsid;
	/**数量*/
	private java.lang.String totalcount;
	/**货品名称*/
	private java.lang.String goodsname;
	/**货品类型*/
	private java.lang.String goodstype;
	
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
	 *@return: java.lang.String  数量
	 */
	@Column(name ="TOTALCOUNT",nullable=true,length=10)
	public java.lang.String getTotalcount(){
		return this.totalcount;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  数量
	 */
	public void setTotalcount(java.lang.String totalcount){
		this.totalcount = totalcount;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  货品名称
	 */
	@Column(name ="GOODSNAME",nullable=true,length=20)
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
	 *@return: java.lang.String  货品类型
	 */
	@Column(name ="GOODSTYPE",nullable=true,length=1)
	public java.lang.String getGoodstype(){
		return this.goodstype;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  货品类型
	 */
	public void setGoodstype(java.lang.String goodstype){
		this.goodstype = goodstype;
	}
}
