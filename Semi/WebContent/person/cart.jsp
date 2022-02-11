<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
<div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<c:forEach var="i" items="${cart}">
		<c:out value= "${i.name}" />
		<c:out value= "${i.price}" />
	</c:forEach>

	실행전
	<table>
		<c:forEach var="g" items="${cart}">	
			<th>name</th>
			<th>price</th>
			<tr>
				<td>${g.name}</td>
				<td>${g.price}</td>
			</tr>
		</c:forEach>
	</table>
	실행후
	
</div>	
</body>
</html>