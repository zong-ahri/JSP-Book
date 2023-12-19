<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<p> --------기본 로케일--------
		<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
	<p> 제목 : <fmt:message key="title" bundle="${resourceBundle}"></fmt:message>
	<p> <fmt:message key="username" var="userMsg" bundle="${resourceBundle}"></fmt:message> 이름 : ${userMsg}
	
	<p> --------영문 로케일--------
		<fmt:setLocale value="en"/>
		<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
	<p> 제목 : <fmt:message key="title" bundle="${resourceBundle}"></fmt:message>
	<p> 이름 : <fmt:message key="username" bundle="${resourceBundle}"></fmt:message>
</body>
</html>