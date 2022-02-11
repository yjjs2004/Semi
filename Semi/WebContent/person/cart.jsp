<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<jsp:include page="header.jsp" />
</head>
<body>
<div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	실행전
	<c:forEach var="g" items="${cart}">
	실행
		<th>name</th>
		<th>price</th>
		<tr>
			<td>${g.name}</td>
			<td>${g.price}</td>
		</tr>
	</c:forEach>
	실행후
	
</div>	
<jsp:include page="pooter.jsp" />
</body>
</html>