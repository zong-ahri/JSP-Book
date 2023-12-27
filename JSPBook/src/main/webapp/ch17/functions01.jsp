<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<p> java 문자열 검색
	<p> Hello, Java ServerPages! => ${fn:contains("Hello, Java Server Pages!", "java")}
	<p> hello, java server pages! => ${fn:containsIgnoreCase("hello, java server pages!", "java")}
</body>
</html>