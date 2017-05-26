<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html >
<html>
<head>
<title>商品集合</title>
<t:base type="jquery,easyui,tools"></t:base>
</head>
<body style="overflow-y: hidden" scroll="no">
<t:datagrid name="stocknameList" title="按货品选择" actionUrl="tBStockController.do?datagridStock" idField="id" checkbox="false"  showRefresh="false">
	<t:dgCol title="编号" field="id" hidden="false" ></t:dgCol>
	<t:dgCol title="商品编号" field="goodsid" hidden="false" ></t:dgCol>
	<t:dgCol title="商品名称" field="goodsname" width="50"></t:dgCol>
	<t:dgCol title="库存数量" field="totalcount" width="50"></t:dgCol>
</t:datagrid>
</body>
</html>
