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
import com.baiHoo.web.buss.entity.base.TBSupplierEntity;
import com.baiHoo.web.buss.service.TBSupplierServiceI;
import com.baiHoo.web.system.service.SystemService;

/**
 * 
 *<p>Title: TBSupplierController</p>
 *<p>Description: 
 *
 *	 供应商
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@SuppressWarnings("all")
@Controller
@RequestMapping("/tBSupplierController")
public class TBSupplierController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(TBSupplierController.class);

	@Autowired
	private TBSupplierServiceI tBSupplierService;
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
	 * 供应商列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "tBSupplier")
	public ModelAndView tBSupplier(HttpServletRequest request) {
		return new ModelAndView("buss/supplier/tBSupplierList");
	}

	/**
	 * 选择货品
	 * 
	 * @return
	 */
	@RequestMapping(params = "tBGoodsSelect")
	public String supplier() {
		return "buss/supplier/tBSupplierSelect";
	}
	
	/**
	 * 供应商选择列表
	 * 
	 * @param request
	 * @param response
	 * @param dataGrid
	 */
	@RequestMapping(params = "datagridSupplier")
	public void datagridSupplier(HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(TBSupplierEntity.class, dataGrid);
		this.systemService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
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
	public void datagrid(TBSupplierEntity tBSupplier,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(TBSupplierEntity.class, dataGrid);
		//查询条件组装器
		com.baiHoo.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, tBSupplier, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.tBSupplierService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除供应商
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(TBSupplierEntity tBSupplier, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		tBSupplier = systemService.getEntity(TBSupplierEntity.class, tBSupplier.getId());
		message = "供应商删除成功";
		try{
			tBSupplierService.delete(tBSupplier);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "供应商删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除供应商
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "供应商删除成功";
		try{
			for(String id:ids.split(",")){
				TBSupplierEntity tBSupplier = systemService.getEntity(TBSupplierEntity.class, 
				id
				);
				tBSupplierService.delete(tBSupplier);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "供应商删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加供应商
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(TBSupplierEntity tBSupplier, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "供应商添加成功";
		try{
			tBSupplierService.save(tBSupplier);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "供应商添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新供应商
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(TBSupplierEntity tBSupplier, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "供应商更新成功";
		TBSupplierEntity t = tBSupplierService.get(TBSupplierEntity.class, tBSupplier.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(tBSupplier, t);
			tBSupplierService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "供应商更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 供应商新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(TBSupplierEntity tBSupplier, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(tBSupplier.getId())) {
			tBSupplier = tBSupplierService.getEntity(TBSupplierEntity.class, tBSupplier.getId());
			req.setAttribute("tBSupplierPage", tBSupplier);
		}
		return new ModelAndView("buss/supplier/tBSupplier-add");
	}
	/**
	 * 供应商编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(TBSupplierEntity tBSupplier, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(tBSupplier.getId())) {
			tBSupplier = tBSupplierService.getEntity(TBSupplierEntity.class, tBSupplier.getId());
			req.setAttribute("tBSupplierPage", tBSupplier);
		}
		return new ModelAndView("buss/supplier/tBSupplier-update");
	}
}
