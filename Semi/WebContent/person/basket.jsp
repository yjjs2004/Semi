<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="UTF-8">
<title>장바구니</title>

<style>
#main {
	margin: 0 auto;
	width: 60%;
	width: 750px;
}

div {
	border: solid 1px black;
}
</style>
</head>
<body>
	<div id="main">
		<header style="text-align: center; border-bottom: solid black 1px;">
			<div style="display: flex">
				<h3 style="margin-left: 1rem; cursor: pointer;" id="back">&lt;</h3>
				<h3 style="width: 100%">장바구니</h3>
				<div style="margin-top: 1rem; cursor: pointer;" id="home">Home</div>
			</div>
		</header>
		
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



	</div>

	<script>
		$(function() {
			$('#back').click(function() {
				history.go(-1);
			});

			$('#home').click(function() {
				location.href = "http://localhost:8088/Semi";
			});
		})
	</script>

</body>
</html>