<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>회원관리 시스템 로그인 페이지</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box
}

input {
	border-radius: 3px;
	border: 1px solid lightgray
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 10px;
	margin: 5px 0 22px 0;
	display: inline-block;
}

input[type=radio] {
	width: 5%;
	display: inline-block;
	border: none;
}

input[type=text]:focus, input[type=password]:focus {
	box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, .25);
	outline: none;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer; /* 손가락 커서 모양 */
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

button:focus {
	outline: none;
} /* 취소 버튼*/
.join {
	padding: 14px 20px;
	background-color: #3a3ad3;
}

.host_join {
	padding: 14px 20px;
	background-color: #3a97d3;
}

.facebook {
	padding: 14px 20px;
	background-color: #343476;
}

.naver {
	padding: 14px 20px;
	background-color: #1eb725;
}

.kakao {
	padding: 14px 20px;
	background-color: #e5d75a;
}



form {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid lightgray;
	width: 600px; /* Could be more or less, depending on screen size */
	padding: 16px;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

b+div {
	width: 100%;
	padding: 10px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
} /* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

h1 {
	text-align: center
}

b {
	width: 100%;
	display: block
}

span {
	display: inline-block;
	margin-top: -20px;
	font-size: 10px
}
</style>
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
<script>
	$(function() {
		$(".join").click(function() {
			location.href = "join.com";
		});

		$(".business").click(function() {
			var id = $("#id").val(); //id=admin
			var pass= $("#pass").val(); //pass=1
			//"id="+id +"&pass="+pass
			location.href = "loginProcess.net?id="+id + "&pass="+pass ;
		});
		
		
		$(".host_join").click(function() {
			location.href = "host_join.net";
		});

		var id = '${id}';
		if (id) {
			$("#id").val(id);
			$("#remember").prop('checked', true);
		}
	})
</script>

</head>
<body>
	<form name="loginform" action="loginProcess.com" method="post">
		<h1>로그인</h1>
		<hr>
		<b>아이디</b> <input type="text" name="id" placeholder="Enter id"
			required maxLength="12"> <span id="message"></span> <b>비밀번호</b>
		<input type="password" name="pass" placeholder="Enter password"
			required> <input type="checkbox" id="remember"
			name="remember" value="store"> <span>remember</span>
		<div class="clearfix">
			<button type="submit" class="submitbtn">로그인</button>
			<button type="button" class="business" >사업자 로그인</button>
			<button type="button" class="join">회원가입</button>
			<button type="button" class="host_join">기업회원가입</button>
			<br> <br>
			<button type="button" class="facebook">FaceBook</button>
			<button type="button" class="naver">Naver</button>
			<button type="button" class="kakao">Kakao</button>
		</div>
	</form>
</body>
</html>