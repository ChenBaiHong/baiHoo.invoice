<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html >
<html>
<head>
<title>分部集合</title>
<t:base type="jquery,easyui,tools"></t:base>
</head>
<body style="overflow-y: hidden" scroll="no">
<t:datagrid name="branchList" title="按分部选择" actionUrl="tBBranchController.do?datagridBranch" idField="id" checkbox="false"  showRefresh="false">
	<t:dgCol title="编号" field="id" hidden="false" ></t:dgCol>
	<t:dgCol title="分部地址" field="branchadd" width="50"></t:dgCol>
</t:datagrid>
</body>
</html>
