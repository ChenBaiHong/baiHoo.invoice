<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="tBStockList" checkbox="false" fitColumns="false" title="库存表" actionUrl="tBStockController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="货品编号"  field="goodsid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="货品名称"  field="goodsname"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="货品类型"  field="goodstype"  hidden="true" query="true" queryMode="single" dictionary="goodstype" width="120"></t:dgCol>
   <t:dgCol title="数量"  field="totalcount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/buss/stock/tBStockList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 </script>