<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="tBPurchaseList" checkbox="true" fitColumns="false" title="入库单表" actionUrl="tBPurchaseController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="货品编号"  field="goodsid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="货品批号"  field="goodsnumber"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="数量"  field="goodscount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="单价"  field="price"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="状态"  field="status"  hidden="true"  queryMode="single" query="true" dictionary="status"  width="120"></t:dgCol>
   <t:dgCol title="供应商名称"  field="suppliername"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系人"  field="contactperson"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系人电话"  field="persontel"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="供应商编号"  field="supplierid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="货品名称"  field="goodsname"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="备注"  field="remark"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="200"></t:dgCol>
   <t:dgDelOpt exp="status#ne#5" title="删除" url="tBPurchaseController.do?doDel&id={id}" />
   <t:dgConfOpt exp="status#eq#1" url="tBPurchaseController.do?doUpdate&id={id}&status=2" title="通过" message="确认通过?" operationCode="pass" />
   <t:dgConfOpt exp="status#eq#1" url="tBPurchaseController.do?doUpdate&id={id}&status=3" title="驳回" message="确认驳回?" operationCode="reject" />
   <t:dgConfOpt exp="status#eq#2" url="tBPurchaseController.do?doUpdate&id={id}&status=5" title="完成" message="确认完成?" operationCode="finish" />
   <t:dgToolBar title="录入" icon="icon-add" url="tBPurchaseController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="tBPurchaseController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="tBPurchaseController.do?goUpdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/buss/purchase/tBPurchaseList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 </script>