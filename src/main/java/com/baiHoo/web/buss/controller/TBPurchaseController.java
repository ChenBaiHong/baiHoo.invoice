package com.baiHoo.web.buss.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.baiHoo.core.common.controller.BaseController;
import com.baiHoo.core.common.exception.BusinessException;
import com.baiHoo.core.common.hibernate.qbc.CriteriaQuery;
import com.baiHoo.core.common.model.json.AjaxJson;
import com.baiHoo.core.common.model.json.DataGrid;
import com.baiHoo.core.constant.Globals;
import com.baiHoo.core.util.MyBeanUtils;
import com.baiHoo.core.util.StringUtil;
import com.baiHoo.tag.core.easyui.TagUtil;
import com.baiHoo.web.buss.entity.base.TBPurchaseEntity;
import com.baiHoo.web.buss.entity.base.TBStockEntity;
import com.baiHoo.web.buss.service.TBPurchaseServiceI;
import com.baiHoo.web.system.service.SystemService;

/**
 * 
 *<p>Title: TBPurchaseController</p>
 *<p>Description: 
 *
 *	 入库单表
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@SuppressWarnings("all")
@Controller
@RequestMapping("/tBPurchaseController")
public class TBPurchaseController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(TBPurchaseController.class);

	@Autowired
	private TBPurchaseServiceI tBPurchaseService;
	@Autowired
	private SystemService systemService;
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	/**
	 * 入库单表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "tBPurchase")
	public ModelAndView tBPurchase(HttpServletRequest request) {
		return new ModelAndView("buss/purchase/tBPurchaseList");
	}

	/**
	 * easyui AJAX请求数据
	 * 
	 * @param request
	 * @param response
	 * @param dataGrid
	 * @param user
	 */

	@RequestMapping(params = "datagrid")
	public void datagrid(TBPurchaseEntity tBPurchase,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(TBPurchaseEntity.class, dataGrid);
		//查询条件组装器
		com.baiHoo.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, tBPurchase, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.tBPurchaseService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除入库单表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(TBPurchaseEntity tBPurchase, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		tBPurchase = systemService.getEntity(TBPurchaseEntity.class, tBPurchase.getId());
		message = "入库单表删除成功";
		try{
			tBPurchaseService.delete(tBPurchase);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "入库单表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除入库单表
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "入库单表删除成功";
		try{
			for(String id:ids.split(",")){
				TBPurchaseEntity tBPurchase = systemService.getEntity(TBPurchaseEntity.class, 
				id
				);
				tBPurchaseService.delete(tBPurchase);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "入库单表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加入库单表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(TBPurchaseEntity tBPurchase, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "入库单表添加成功";
		try{
			tBPurchase.setStatus(Globals.STATUS_PENDING);
			tBPurchaseService.save(tBPurchase);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "入库单表添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新入库单表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(TBPurchaseEntity tBPurchase, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if(Globals.STATUS_PASS.equals(tBPurchase.getStatus())){
			message = "入库单审核通过成功";
		}else if(Globals.STATUS_REJECT.equals(tBPurchase.getStatus())){
			message = "入库单驳回成功";
		}else if(Globals.STATUS_FINISH.equals(tBPurchase.getStatus())){
			message = "入库单完成成功";
		}else{
			message = "入库单表更新成功";
		}
		TBPurchaseEntity t = tBPurchaseService.get(TBPurchaseEntity.class, tBPurchase.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(tBPurchase, t);
			if(Globals.STATUS_FINISH.equals(tBPurchase.getStatus())){
				tBPurchaseService.doSaveorUpdateStock(t);
			}else{
				tBPurchaseService.saveOrUpdate(t);
			}
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "入库单表更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 入库单表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(TBPurchaseEntity tBPurchase, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(tBPurchase.getId())) {
			tBPurchase = tBPurchaseService.getEntity(TBPurchaseEntity.class, tBPurchase.getId());
			req.setAttribute("tBPurchasePage", tBPurchase);
		}
		return new ModelAndView("buss/purchase/tBPurchase-add");
	}
	/**
	 * 入库单表编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(TBPurchaseEntity tBPurchase, HttpServletRequest req) {
		String id = req.getParameter("id");
		if (StringUtil.isNotEmpty(id)) {
			tBPurchase = tBPurchaseService.getEntity(TBPurchaseEntity.class, id);
			req.setAttribute("tBPurchasePage", tBPurchase);
		}
		return new ModelAndView("buss/purchase/tBPurchase-update");
	}
}
