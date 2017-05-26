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
import com.baiHoo.web.buss.entity.base.TBBranchEntity;
import com.baiHoo.web.buss.service.TBBranchServiceI;
import com.baiHoo.web.system.service.SystemService;

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
@SuppressWarnings("all")
@Controller
@RequestMapping("/tBBranchController")
public class TBBranchController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(TBBranchController.class);

	@Autowired
	private TBBranchServiceI tBBranchService;
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
	 * 分公司表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "tBBranch")
	public ModelAndView tBBranch(HttpServletRequest request) {
		return new ModelAndView("buss/branch/tBBranchList");
	}
	
	/**
	 * 选择分部
	 * 
	 * @return
	 */
	@RequestMapping(params = "tBBranchSelect")
	public String branch() {
		return "buss/branch/tBBranchSelect";
	}
	
	/**
	 * 分部显示列表
	 * 
	 * @param request
	 * @param response
	 * @param dataGrid
	 */
	@RequestMapping(params = "datagridBranch")
	public void datagridBranch(HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(TBBranchEntity.class, dataGrid);
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
	public void datagrid(TBBranchEntity tBBranch,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(TBBranchEntity.class, dataGrid);
		//查询条件组装器
		com.baiHoo.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, tBBranch, request.getParameterMap());
		try{
		//自定义追加查询条件
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.tBBranchService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除分公司表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(TBBranchEntity tBBranch, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		tBBranch = systemService.getEntity(TBBranchEntity.class, tBBranch.getId());
		message = "分公司表删除成功";
		try{
			tBBranchService.delete(tBBranch);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "分公司表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除分公司表
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		AjaxJson j = new AjaxJson();
		message = "分公司表删除成功";
		try{
			for(String id:ids.split(",")){
				TBBranchEntity tBBranch = systemService.getEntity(TBBranchEntity.class, 
				id
				);
				tBBranchService.delete(tBBranch);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "分公司表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加分公司表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(TBBranchEntity tBBranch, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "分公司表添加成功";
		try{
			tBBranchService.save(tBBranch);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "分公司表添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新分公司表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(TBBranchEntity tBBranch, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		message = "分公司表更新成功";
		TBBranchEntity t = tBBranchService.get(TBBranchEntity.class, tBBranch.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(tBBranch, t);
			tBBranchService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "分公司表更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 分公司表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(TBBranchEntity tBBranch, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(tBBranch.getId())) {
			tBBranch = tBBranchService.getEntity(TBBranchEntity.class, tBBranch.getId());
			req.setAttribute("tBBranchPage", tBBranch);
		}
		return new ModelAndView("buss/branch/tBBranch-add");
	}
	/**
	 * 分公司表编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(TBBranchEntity tBBranch, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(tBBranch.getId())) {
			tBBranch = tBBranchService.getEntity(TBBranchEntity.class, tBBranch.getId());
			req.setAttribute("tBBranchPage", tBBranch);
		}
		return new ModelAndView("buss/branch/tBBranch-update");
	}
}
