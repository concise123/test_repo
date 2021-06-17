<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	li {
	  display: inline;
	}
</style>
<link href="/resources/css/menu.css" rel="stylesheet" type="text/css">
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script src="/resources/js/menu.js"></script>
</head>
<body>
	<div>
		<ul id = "menu">
			<li><a href="../">Home</a></li>
			<li><a href="../userInfo">사용자정보</a></li>
		</ul>
	</div>
</body>
</html>