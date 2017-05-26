<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="tBBranchList" checkbox="true" fitColumns="false" title="分公司表" actionUrl="tBBranchController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="分公司地址"  field="branchadd"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="分公司电话"  field="branchtel"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="负责人姓名"  field="leadername"  hidden="true" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="负责人电话"  field="leadertel"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="邮编"  field="zipcode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="tBBranchController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="tBBranchController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="tBBranchController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="tBBranchController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="tBBranchController.do?goUpdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/buss/branch/tBBranchList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 </script>