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
 * 货品表
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@Entity
@Table(name = "T_B_GOODS", schema = "")
@SuppressWarnings("serial")
public class TBGoodsEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**货品名称*/
	private java.lang.String goodsname;
	/**货品类型*/
	private java.lang.String goodstype;
	/**成本价*/
	private java.math.BigDecimal costprice;
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
	 *@return: java.lang.String  货品名称
	 */
	@Column(name ="GOODSNAME",nullable=true,length=16)
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
	@Column(name ="GOODSTYPE",nullable=true,length=2)
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
	/**
	 *方法: 取得java.math.BigDecimal
	 *@return: java.math.BigDecimal  成本价
	 */
	@Column(name ="COSTPRICE",nullable=true,scale=2,length=10)
	public java.math.BigDecimal getCostprice(){
		return this.costprice;
	}

	/**
	 *方法: 设置java.math.BigDecimal
	 *@param: java.math.BigDecimal  成本价
	 */
	public void setCostprice(java.math.BigDecimal costprice){
		this.costprice = costprice;
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
