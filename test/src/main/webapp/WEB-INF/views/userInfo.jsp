<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USER INFO</title>
<style>
	table {
		border-collapse: collapse;
	}
	table, th, td {
		border: 0.5px solid black;
	}
	th, td {
		text-align: center;
	}
</style>
</head>
<body>
	<table>
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