<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="tBShipList" checkbox="true" fitColumns="false" title="出库单表" actionUrl="tBShipController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="货品编号"  field="goodsid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="货品名称"  field="goodsname"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="数量"  field="goodscount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="状态"  field="status"  hidden="true" query="true" dictionary="status"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="发送分部"  field="branchid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="分部地址"  field="branchadd"  hidden="true" query="true" queryMode="single"  width="200"></t:dgCol>
   <t:dgCol title="出库日期"  field="shipdate" formatter="yyyy-MM-dd" hidden="true" query="true" queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="备注"  field="remark"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="1800"></t:dgCol>
   <t:dgDelOpt  exp="status#ne#5" title="删除" url="tBShipController.do?doDel&id={id}" />
   <t:dgConfOpt exp="status#eq#1" url="tBShipController.do?doUpdate&id={id}&status=2" title="通过" message="确认通过？" operationCode="pass" />
   <t:dgConfOpt exp="status#eq#1" url="tBShipController.do?doUpdate&id={id}&status=3" title="驳回" message="确认驳回？" operationCode="reject" />
   <t:dgConfOpt exp="status#eq#2" url="tBShipController.do?doUpdate&id={id}&status=5" title="完成" message="确认完成？" operationCode="finish" />
   <t:dgToolBar title="录入" icon="icon-add" url="tBShipController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="tBShipController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="tBShipController.do?goUpdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/buss/ship/tBShipList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#tBShipListtb").find("input[name='shipdate_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#tBShipListtb").find("input[name='shipdate_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 </script>