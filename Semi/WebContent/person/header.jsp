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
<link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../dist/css/adminlte.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
header {
	position: fixed;
	top: 0;
	width: 100%;
	left: 0;
	right: 0;
	z-index: 20;
	border-bottom: 1px solid #e6e6e6;
	/* 생략 */ 
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-light navbar-white">
			<div class="container">
				<a href="http://localhost:8088/Semi/person/mainPage.jsp" class="navbar-brand"> <img
					src="../image/로고.png" width="65px" height="65px" alt="AdminLTE Logo"
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
						<li class="nav-item"><a href="http://localhost:8088/Semi/person/mainPage.jsp" class="nav-link">Home</a>
						</li>
						<li class="nav-item"><a href="#" class="nav-link">Contact</a>
						</li>
						<li class="nav-item dropdown"><a id="dropdownSubMenu1"
							href="#" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false" class="nav-link dropdown-toggle">Dropdown</a>
							<ul aria-labelledby="dropdownSubMenu1"
								class="dropdown-menu border-0 shadow">
								<li><a href="#" class="dropdown-item">Some action </a></li>
								<li><a href="#" class="dropdown-item">Some other action</a></li>

								<li class="dropdown-divider"></li>

								<!-- Level two dropdown-->
								<li class="dropdown-submenu dropdown-hover"><a
									id="dropdownSubMenu2" href="#" role="button"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false" class="dropdown-item dropdown-toggle">Hover
										for action</a>
									<ul aria-labelledby="dropdownSubMenu2"
										class="dropdown-menu border-0 shadow">
										<li><a tabindex="-1" href="#" class="dropdown-item">level
												2</a></li>

										<!-- Level three dropdown-->
										<li class="dropdown-submenu"><a id="dropdownSubMenu3"
											href="#" role="button" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"
											class="dropdown-item dropdown-toggle">level 2</a>
											<ul aria-labelledby="dropdownSubMenu3"
												class="dropdown-menu border-0 shadow">
												<li><a href="#" class="dropdown-item">3rd level</a></li>
												<li><a href="#" class="dropdown-item">3rd level</a></li>
											</ul></li>
										<!-- End Level three -->

										<li><a href="#" class="dropdown-item">level 2</a></li>
										<li><a href="#" class="dropdown-item">level 2</a></li>
									</ul></li>
								<!-- End Level two -->
							</ul></li>
					</ul>

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
					<!-- Messages Dropdown Menu -->
					<c:if test="${!empty id }">
				   <li class="nav-item"><a class="nav-link"
						data-widget="control-sidebar" data-slide="true" href="main.net"
						role="button">${id }님(로그아웃)</a></li>
						<c:if test="${id=='admin' }">
							<!-- Notifications Dropdown Menu -->
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbardrop"
					            data-toggle="dropdown">관리자</a>
								<div class="dropdown-menu">
							<a class="dropdown-item" href="memberList.net">회원정보</a>
							<a class="dropdown-item" href="BoardList.bo">게시판</a>
							</div></li>
						</c:if>
					</c:if>
				
					
					
					<li class="nav-item dropdown"><a class="nav-link"
						data-toggle="dropdown" href="#"> <i class="fas fa-comments"></i>
							<span class="badge badge-danger navbar-badge">3</span>
					</a>
						
					<!-- Notifications Dropdown Menu -->
					<li class="nav-item dropdown"><a class="nav-link"
						data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
							class="badge badge-warning navbar-badge">15</span>
					</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
							<span class="dropdown-header">15 Notifications</span>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="fas fa-envelope mr-2"></i> 4 new messages <span
								class="float-right text-muted text-sm">3 mins</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="fas fa-users mr-2"></i> 8 friend requests <span
								class="float-right text-muted text-sm">12 hours</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="fas fa-file mr-2"></i> 3 new reports <span
								class="float-right text-muted text-sm">2 days</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item dropdown-footer">See All
								Notifications</a>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-widget="control-sidebar" data-slide="true" href="login.com"
						role="button"> <i class="fas fa-th-large"></i>
					</a></li>
				</ul>
			</div>
		</nav>
	</header>
</body>
</html>
