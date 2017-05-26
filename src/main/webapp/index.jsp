<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>访问登录界面</title>
</head>
<body>
<script type="text/javascript">
		window.setTimeout(function() {
			window.location.replace('loginController.do?login');
		}, 500);
	</script>
</body>
