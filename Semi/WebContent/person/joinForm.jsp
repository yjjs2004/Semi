<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>회원관리 시스템 회원가입 페이지</title>
<link href="${pageContext.request.contextPath}/css/join.css"
	type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
<script>
	$(function() {
		var checkid = false;
		var checknick = false;
		var checkemail = false;
		var checkpw=false;
		$("input:eq(0)").on(
				'keyup',
				function() {
					$("#message").empty();//처음에 pattern에 적합하지 않은 경우  메시지 출력 후 적합한 데이터를 입력해도 계속 같은 데이터
					//[A-Za-z0-9]의 의미가 \w
					var pattern = /^\w{5,12}$/;
					var id = $("input:eq(0)").val();
					if (!pattern.test(id)) {
						$("#message").css('color', 'red').html(
								"영문자 숫자 _로 5~12자 가능합니다.");
						checkid = false;
						return;
					}
					$.ajax({
						url : "idcheck.net",
						data : {
							"id" : id
						},
						success : function(resp) {
							if (rest == -1) {//db에 해당 id가 없는 경우
								$("#message").css('color', 'green').html(
										"사용 가능한 아이디 입니다.");
								checkid = true;
							} else {//db에 해당 id가 있는 경우(0)
								$("#message").css('color', 'blue').html(
										"사용중인 아이디 입니다.");
								checkid = false;
							}
						}
					})//ajax end
				})//id keyup end

		$("input:eq(1)").on(
				'keyup',
				function() {
					$("#nickmessage").empty();//처음에 pattern에 적합하지 않은 경우  메시지 출력 후 적합한 데이터를 입력해도 계속 같은 데이터
					//[A-Za-z0-9]의 의미가 \w
					var pattern = /^\w{5,12}$/;
					var id = $("input:eq(1)").val();
					if (!pattern.test(id)) {
						$("#nickmessage").css('color', 'red').html(
								"영문자 숫자 _로 5~12자 가능합니다.");
						checknick = false;
						return;
					}
					$.ajax({
						url : "nickcheck.net",
						data : {
							"id" : id
						},
						success : function(resp) {
							if (rest == -1) {//db에 해당 id가 없는 경우
								$("#nickmessage").css('color', 'green').html(
										"사용 가능한 아이디 입니다.");
								checknick = true;
							} else {//db에 해당 id가 있는 경우(0)
								$("#nickmessage").css('color', 'blue').html(
										"사용중인 아이디 입니다.");
								checknick = false;
							}
						}
					})//ajax end
				})//id keyup end

		$("input:eq(3)").on(
				'keyup',
				function() {
					$("#pwmessage").empty();
					//[A-Za-z0-9]와 동일한 것이  \w 입니다.
					//+는 1회 이상 반복을 의미하고 {1,}와 동일합니다.
					//\w+는 //[A-Za-z0-9]를 1개 이상  사용하라는 의미입니다.
					var pw1=$("input:eq(2)").val();
					var pw2=$("input:eq(3)").val();
					if (pw1==pw2) {
						$("#pwmessage").css('color', 'green').html(
								"비밀번호가 일치합니다.");
						checkpw = true;
					} else {
						$("#pwmessage").css('color', 'red').html(
								"비밀번호가 일치하지 않습니다.");
						checkpw = false;
					}
				});//email keyup 이벤트 처리 끝

		$("input:eq(9)").on(
				'keyup',
				function() {
					$("#email_message").empty();
					//[A-Za-z0-9]와 동일한 것이  \w 입니다.
					//+는 1회 이상 반복을 의미하고 {1,}와 동일합니다.
					//\w+는 //[A-Za-z0-9]를 1개 이상  사용하라는 의미입니다.
					var pattern = /^w+@w+[.]\w{3}$/;
					var email = $("input:eq(9)").val();
					if (!pattern.test(email)) {
						$("#email_message").css('color', 'red').html(
								"이메일 형식이 맞지 않습니다.");
						checkemail = false;
					} else {
						$("#email_message").css('color', 'green').html(
								"이메일 형식이 맞습니다.");
						checkemail = true;
					}
				});//email keyup 이벤트 처리 끝

		$('form').submit(function() {
			if (!$.isNumeric($("input[name='birth']").val())) {
				alert("생년월일 숫자를 입력하세요");
				$("input[name='age']").val('').focus();
				return false;
			}
			if (!checkid) {
				alert("사용가능한 id로 입력하세요.");
				$("input:eq(0)").val('').focus();
				return false;
			}
			if (!checkpw) {
				alert("비밀번호를 다시 확인해 주세요.");
				$("input:eq(3)").val('').focus();
				return false;
			}
			if (!checkemail) {
				alert("email 형식을 확인하세요");
				$("input:eq(9)").focus();
				return false;
			}
		});//submit
	})
</script>

</head>
<body>
	<form name="joinform" action="joinProcess.net" method="post">
		<h1>회원가입</h1>
		<hr>
		<b>아이디</b> <input type="text" name="id" placeholder="Enter id"
			required maxLength="12"> <span id="message"></span> <b>닉네임</b>
		<input type="text" name="id" placeholder="Enter nickname" required
			maxLength="20"> <span id="nickmessage"></span> <b>비밀번호</b> <input
			type="password" name="pass" placeholder="Enter password" required>
		<b>비밀번호 확인</b> <input type="password" name="passcheck"
			placeholder="Enter password" required><span id="pwmessage"></span>
		<b>휴대폰 번호</b> <input type="text" name="tel"
			placeholder="xxx-xxxx-xxxx" required> <b>이름</b> <input
			type="text" name="name" placeholder="Enter name" required
			maxLength="5"> <b>생년월일</b> <input type="text" name="birth"
			placeholder="xxxxxx" required maxLength="6"> <b>성별</b>
		<div>
			<input type="radio" name="gender" value="남"><span>남자</span> <input
				type="radio" name="gender" value="여"><span>여자</span>
		</div>

		<b>주소</b> <input type="text" name="address"
			placeholder="Enter address" maxlength="30" required> <span
			id="address_message"></span> <b>이메일 주소</b> <input type="text"
			name="email" placeholder="Enter email" maxlength="30" required>
		<span id="email_message"></span>
		<div class="clearfix">
			<button type="submit" class="submitbtn">회원가입</button>
			<button type="reset" class="cancelbtn">다시작성</button>
		</div>
	</form>
</body>
</html>