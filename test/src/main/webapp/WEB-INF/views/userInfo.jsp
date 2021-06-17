<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>USER INFO</title>
<style>
	table {
		border-collapse: collapse;
	}
	table, th, td {
		border: 0.5px solid black;
	}
</style>
<link href="/resources/css/table.css" rel="stylesheet" type="text/css">
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	    $("#userInfo").click(function(){
	    	  alert("Clicked.");
		});
	});
</script>
</head>
<body>
	<div>
		<p style="display: inline-block;">사용자 정보 테이블</p>
		<img src="/resources/images/info-31185_1280.png" class="info_icon" alt="information" width="10" height="10" title="사용자 아이디와 이름을 정리한 표입니다.">
	</div>
	<table id="userInfo">
		<tr>
			<th>순서</th>
			<th>아이디</th>
			<th>이름</th>
		</tr>
		<c:forEach var="userInfoList" items="${USER_INFO_LIST}" varStatus="status">
    	<tr>
	    	<td>${status.count}</td>
	    	<td><c:out value="${userInfoList.user_id}"/></td>
	    	<td><c:out value="${userInfoList.user_name}"/></td>
    	</tr>
		</c:forEach>
	</table>
</body>
</html>