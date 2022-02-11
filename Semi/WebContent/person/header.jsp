<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<a href="http://localhost:8088/Semi" class="navbar-brand"> <img
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
						<li class="nav-item"><a href="http://localhost:8088/Semi" class="nav-link">Home</a>
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
					<!-- 수정해서 사용하면 됩니다. 1번 2번 -->
					<li>
						<a class="nav-link" data-toggle="dropdown" href="#"> 1 </a>
					<li>
						<a class="nav-link" href="#">장바구니</a>
					</li>
					<li>
						<a class="nav-link" href="login.com"role="button">Login</a>
					</li>
				</ul>
			</div>
		</nav>
	</header>
</body>
</html>