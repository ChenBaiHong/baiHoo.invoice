package com.baiHoo.web.buss.controller;
import java.text.SimpleDateFormat;

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
import com.baiHoo.web.buss.entity.base.TBShipEntity;
import com.baiHoo.web.buss.service.TBShipServiceI;
import com.baiHoo.web.system.service.SystemService;

/**
 * 
 *<p>Title: TBShipController</p>
 *<p>Description: 
 *
 *	出库单表
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@SuppressWarnings("all")
@Controller
@RequestMapping("/tBShipController")
public class TBShipController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(TBShipController.class);

	@Autowired
	private TBShipServiceI tBShipService;
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
	 * 出库单表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "tBShip")
	public ModelAndView tBShip(HttpServletRequest request) {
		return new ModelAndView("buss/ship/tBShipList");
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
	public void datagrid(TBShipEntity tBShip,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(TBShipEntity.class, dataGrid);
		
		//查询条件组装器
		com.baiHoo.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, tBShip, request.getParameterMap());
		try{
		//自定义追加查询条件
		String query_shipdate_begin = request.getParameter("shipdate_begin");
		String query_shipdate_end = request.getParameter("shipdate_end");
		if(StringUtil.isNotEmpty(query_shipdate_begin)){
			cq.ge("shipdate", new SimpleDateFormat("yyyy-MM-dd").parse(query_shipdate_begin));
		}
		if(StringUtil.isNotEmpty(query_shipdate_end)){
			cq.le("shipdate", new SimpleDateFormat("yyyy-MM-dd").parse(query_shipdate_end));
		}
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.tBShipService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
		
	}

	/**
	 * 删除出库单表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(TBShipEntity tBShip, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		tBShip = systemService.getEntity(TBShipEntity.class, tBShip.getId());
		message = "出库单表删除成功";
		try{
			tBShipService.delete(tBShip);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "出库单表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除出库单表
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "出库单表删除成功";
		try{
			for(String id:ids.split(",")){
				TBShipEntity tBShip = systemService.getEntity(TBShipEntity.class, 
				id
				);
				tBShipService.delete(tBShip);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "出库单表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加出库单表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(TBShipEntity tBShip, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "出库单表添加成功";
		tBShip.setStatus(Globals.STATUS_PENDING);
		try{
			tBShipService.save(tBShip);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "出库单表添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新出库单表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(TBShipEntity tBShip, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if(Globals.STATUS_PASS.equals(tBShip.getStatus())){
			message = "出库单审核通过成功";
		}else if(Globals.STATUS_REJECT.equals(tBShip.getStatus())){
			message = "出库单驳回成功";
		}else if(Globals.STATUS_FINISH.equals(tBShip.getStatus())){
			message = "出库单完成成功";
		}else{
			message = "出库单表更新成功";
		}
		TBShipEntity t = tBShipService.get(TBShipEntity.class, tBShip.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(tBShip, t);
			if(Globals.STATUS_FINISH.equals(tBShip.getStatus())){
				tBShipService.doSaveorUpdateStock(t);
			}else{
				tBShipService.saveOrUpdate(t);
			}
			
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "出库单表更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 出库单表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(TBShipEntity tBShip, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(tBShip.getId())) {
			tBShip = tBShipService.getEntity(TBShipEntity.class, tBShip.getId());
			req.setAttribute("tBShipPage", tBShip);
		}
		return new ModelAndView("buss/ship/tBShip-add");
	}
	/**
	 * 出库单表编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(TBShipEntity tBShip, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(tBShip.getId())) {
			tBShip = tBShipService.getEntity(TBShipEntity.class, tBShip.getId());
			req.setAttribute("tBShipPage", tBShip);
		}
		return new ModelAndView("buss/ship/tBShip-update");
	}
}
