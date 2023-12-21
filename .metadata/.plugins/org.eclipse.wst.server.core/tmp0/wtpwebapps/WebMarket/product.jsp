<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page errorPage="exceptionNoProductId.jsp" %>
<jsp:useBean class="dao.ProductRepository" id="productDAO" scope="session"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%= product.getFilename() %>" style="width: 100%">
			</div>	
			<div class="col-md-6">
				<h3><%= product.getPname() %></h3>
				<p><%= product.getDescription() %>
				<p> <b>상품 코드 : </b><span class="badge badge-danger"><%= product.getProductId() %></span>
				<p> <b>제조사</b> : <%= product.getManufacturer() %>
				<p> <b>분류</b> : <%= product.getCategory() %>
				<p> <b>재고 수</b> : <%= product.getUnitsInstock() %>
				<h4><%= product.getUnitPrice() %>원</h4>

				<%-- 
				<h3><% out.println(product.getPname()); %></h3>
				<p><% out.println(product.getDescription()); %>
				<p> <b>상품 코드 : </b><span class="badge badge-danger"><%= product.getProductId() %></span>
				<p> <b>제조사</b> : <% out.println(product.getManufacturer()); %>
				<p> <b>분류</b> : <% out.println(product.getCategory()); %>
				<p> <b>재고 수</b> : <% out.println(product.getUnitsInstock()); %>
				<h4><% out.println(product.getUnitPrice()); %>원</h4>
				 --%>
				 
				<p>
				<form action="./addCart.jsp?id=<%= product.getProductId() %>" name="addForm" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary" role="button"> 상품 목록 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>