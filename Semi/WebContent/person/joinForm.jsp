<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Igoda 회원가입 페이지</title>
<jsp:include page="../person/header.jsp" />
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box
}

form>input {
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

button[type=button] {
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
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
    color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer; /* 손가락 커서 모양 */
	width: 100%;
	opacity: 0.9;
}
.submitbtn{
background-color: #4CAF50;
padding: 14px 20px;
color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer; /* 손가락 커서 모양 */
	width: 100%;
	opacity: 0.9;
}
.business{
background-color: #4e7e50;
padding: 14px 20px;
color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer; /* 손가락 커서 모양 */
	width: 100%;
	opacity: 0.9;
}
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



.loginform {
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$(function() {
		var checkid = false;
		var checknick = false;
		var checkemail = false;
		var checkpw = false;
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
						url : "idcheck.com",
						data : {
							"id" : id
						},
						success : function(resp) {
							if (resp == 0) {//db에 해당 id가 없는 경우
								$("#message").css('color', 'green').html(
										"사용 가능한 아이디 입니다.");
								checkid = true;
							} else {//db에 해당 id가 있는 경우(1)
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
					var nick = $("input:eq(1)").val();
					if (!pattern.test(nick)) {
						$("#nickmessage").css('color', 'red').html(
								"영문자 숫자 _로 5~12자 가능합니다.");
						checknick = false;
						return;
					}
					$.ajax({
						url : "nickcheck.com",
						data : {
							"nick" : nick
						},
						success : function(rest) {
							if (rest == 0) {//db에 해당 id가 없는 경우
								$("#nickmessage").css('color', 'green').html(
										"사용 가능한 닉네임 입니다.");
								checknick = true;
							} else {//db에 해당 id가 있는 경우(1)
								$("#nickmessage").css('color', 'blue').html(
										"사용중인 닉네임 입니다.");
								checknick = false;
							}
						}
					})//ajax end
				})//id keyup end

		$("input:eq(3)").on('keyup', function() {
			$("#pwmessage").empty();
			//[A-Za-z0-9]와 동일한 것이  \w 입니다.
			//+는 1회 이상 반복을 의미하고 {1,}와 동일합니다.
			//\w+는 //[A-Za-z0-9]를 1개 이상  사용하라는 의미입니다.
			var pw1 = $("input:eq(2)").val();
			var pw2 = $("input:eq(3)").val();
			if (pw1 == pw2) {
				$("#pwmessage").css('color', 'green').html("비밀번호가 일치합니다.");
				checkpw = true;
			} else {
				$("#pwmessage").css('color', 'red').html("비밀번호가 일치하지 않습니다.");
				checkpw = false;
			}
		});//email keyup 이벤트 처리 끝

		$("#email").on(
				'keyup',
				function() {
					$("#email_message").empty();
					//[A-Za-z0-9]와 동일한 것이  \w 입니다.
					//+는 1회 이상 반복을 의미하고 {1,}와 동일합니다.
					//\w+는 //[A-Za-z0-9]를 1개 이상  사용하라는 의미입니다.
					var pattern = /^\w+@\w+[.]\w{3}$/;
					var email = $("#email").val();
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
	
	  function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
</script>

</head>
<body>

	 <br><br>
	<form class="loginform" name="joinform" action="joinProcess.com" method="post">
		<h1>회원가입</h1>
		<hr>
		<b>아이디</b> <input type="text" name="id" placeholder="Enter id"
			required maxLength="12"> <span id="message"></span> <b>닉네임</b>
		<input type="text" name="nick" placeholder="Enter nickname" required
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

 <input type="text" name="postcode" id="postcode" placeholder="우편번호">
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" name="address" id="address" placeholder="주소"><br>
<input type="text" name="detailAddress" id="detailAddress" placeholder="상세주소">
<input type="text" name="sample6_extraAddress" id="sample6_extraAddress" placeholder="참고항목"> <b>이메일 주소</b> <input type="text"
			name="email" id="email" placeholder="Enter email" maxlength="30" required>
		<span id="email_message"></span>
		<div class="clearfix">
			<button type="submit" class="submitbtn">회원가입</button>
			<button type="reset" class="cancelbtn">다시작성</button>
		</div>
	</form>
</body>
</html>