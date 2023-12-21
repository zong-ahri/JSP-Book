<%@page import="dao.ProductRepository"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Product"%>
<jsp:useBean class="dao.ProductRepository" id="productDAO" scope="session"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">	
			<% 
				for(int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<img src="./resources/images/<%= product.getFilename() %>" style="width: 100%">
				<h3><%= product.getPname() %></h3>
				<p><%= product.getDescription() %>
				<p><%= product.getUnitPrice() %>원
				<p> <a href="./product.jsp?id=<%= product.getProductId() %>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
			</div>
			<% 
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>