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
	<p> 숫자 : <fmt:formatNumber value="3200100"></fmt:formatNumber>
	<p> <fmt:formatNumber value="3200100" type="number"></fmt:formatNumber>
	<p> <fmt:formatNumber value="3200100" type="number" groupingUsed="false"></fmt:formatNumber>
	<p> <fmt:formatNumber value="3200100" type="currency" groupingUsed="true"></fmt:formatNumber>
	<p> <fmt:formatNumber value="3200100" type="currency" currencySymbol="&"></fmt:formatNumber>
	<p> <fmt:formatNumber value="0.45" type="percent"></fmt:formatNumber>
	<p> <fmt:formatNumber value="3200100" minIntegerDigits="10" minFractionDigits="2"></fmt:formatNumber>
	<p> <fmt:formatNumber value="3200100.45" pattern=".000"></fmt:formatNumber>
	<p> <fmt:formatNumber value="3200100.456" pattern="#,#00.0#"></fmt:formatNumber>
</body>
</html>