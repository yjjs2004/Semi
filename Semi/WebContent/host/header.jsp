<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HEADER | Top Navigation</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
header {
	
	top: 0;
	width: 100%;
	left: 0;
	right: 0;
	
	border-bottom: 1px solid #e6e6e6;
	/* 생략 */ 
}


</style>
</head>
<body>
	<header>
	<c:if test="${empty id }">
	<script>
		location.href = "login.net";
	</script>
</c:if>
		<nav class="navbar navbar-expand-md navbar-light navbar-white" style="height:100px">
			<div class="container" >
				<a href="main.com" class="navbar-brand"> <img
					src="${pageContext.request.contextPath}/image/로고1.png" width="65px" height="65px" alt="AdminLTE Logo"
					class="brand-image img-circle elevation-3" style="opacity: .8">
				</a>
 
				<button class="navbar-toggler order-1" type="button"
					data-toggle="collapse" data-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse order-3" id="navbarCollapse">
					<!-- Left navbar links -->
					<ul class="navbar-nav">
						<li class="nav-item"><a href="main.com" class="nav-link">Home</a>
						</li>
						

					<!-- SEARCH FORM -->
					<form class="form-inline ml-0 ml-md-3">
						<div class="input-group input-group-sm">
							<input class="form-control form-control-navbar" type="search"
								placeholder="Search" aria-label="Search">
							<div class="input-group-append">
								<button class="btn btn-navbar" type="submit">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>

				<!-- Right navbar links -->
				<ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
				<c:if test="${!empty id }">
				   <li class="nav-item"><a class="nav-link"
						data-widget="control-sidebar" data-slide="true" href="main.com"
						role="button">${id }님(로그아웃)</a></li>
						<c:if test="${id=='admin' }">
							<!-- Notifications Dropdown Menu -->
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbardrop"
					            data-toggle="dropdown">관리자</a>
								<div class="dropdown-menu">
							<a class="dropdown-item" href="hostUpdate.net">정보수정</a>
							<a class="dropdown-item" href="res_detail.net">예약관리</a>
							<a class="dropdown-item" href="list.net">예약관리</a>
							<a class="dropdown-item" href="reg.net">예약관리</a>
							</div></li>
						</c:if>
					</c:if>
				
			
				</ul>
			</div>
		</nav>
	</header>
</body>
</html>