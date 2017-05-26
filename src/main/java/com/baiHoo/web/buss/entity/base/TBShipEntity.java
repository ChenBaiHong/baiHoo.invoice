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
 * 出库单表
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@Entity
@Table(name = "T_B_SHIP", schema = "")
@SuppressWarnings("serial")
public class TBShipEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**货品编号*/
	private java.lang.String goodsid;
	/**货品名称*/
	private java.lang.String goodsname;
	/**数量*/
	private java.lang.String goodscount;
	/**状态*/
	private java.lang.String status;
	/**发送分部*/
	private java.lang.String branchid;
	/**分部地址*/
	private java.lang.String branchadd;
	/**出库日期*/
	private java.util.Date shipdate;
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
	 *@return: java.lang.String  发送分部
	 */
	@Column(name ="BRANCHID",nullable=true,length=36)
	public java.lang.String getBranchid(){
		return this.branchid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发送分部
	 */
	public void setBranchid(java.lang.String branchid){
		this.branchid = branchid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  分部名称
	 */
	@Column(name ="BRANCHADD",nullable=true,length=20)
	public java.lang.String getBranchadd(){
		return this.branchadd;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  分部名称
	 */
	public void setBranchadd(java.lang.String branchadd){
		this.branchadd = branchadd;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  出库日期
	 */
	@Column(name ="SHIPDATE",nullable=true,length=10)
	public java.util.Date getShipdate(){
		return this.shipdate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  出库日期
	 */
	public void setShipdate(java.util.Date shipdate){
		this.shipdate = shipdate;
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
