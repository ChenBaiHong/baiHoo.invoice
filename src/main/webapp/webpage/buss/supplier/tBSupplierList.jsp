<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="tBSupplierList" checkbox="true" fitColumns="false" title="供应商" actionUrl="tBSupplierController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="供应商名称"  field="suppliername"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="供应商地址"  field="supplieraddr"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="供应商电话"  field="suppliertel"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="供应商Email"  field="supplieremail"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="企业注册号"  field="suppliernum"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系人"  field="contactperson"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系人电话"  field="persontel"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="tBSupplierController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="tBSupplierController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="tBSupplierController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="tBSupplierController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="tBSupplierController.do?goUpdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/buss/supplier/tBSupplierList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 </script>