<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="userInfoList" items="${USER_INFO_LIST}" varStatus="status">
    	<p>${status.count} : 사용자 아이디는 <c:out value="${userInfoList.user_id}"/>입니다. 사용자 이름은 <c:out value="${userInfoList.user_name}"/>입니다.</p>
	</c:forEach>
</body>
</html>