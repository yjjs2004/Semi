<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

.cancelbtn, .submitbtn {
	float: left;
	width: 50%;
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
<script src="js2/jquery-3.6.0.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	
	function fnCheckBizID(bizID) { 
		// bizID는 숫자만 10자리로 해서 문자열로 넘긴다. 
		var checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1); 
		var tmpBizID, i, chkSum = 0, c2, remander; 
		var result; bizID = bizID.replace(/-/gi, ''); 
		for (i = 0; i <= 7; i++) { chkSum += checkID[i] * bizID.charAt(i); } c2 = "0" + (checkID[8] * bizID.charAt(8)); c2 = c2.substring(c2.length - 2, c2.length); 
		chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1)); 
		remander = (10 - (chkSum % 10)) % 10; 
		if (Math.floor(bizID.charAt(9)) == remander) 
		{ result = true; // OK! 
		} else 
		{ result = false; 
		} 
		return result; 
		}

		
	
	function fnCheckCRN(value) {
		var vCrnCode = value;
		if (vCrnCode.length == 10) {
			if (fnCheckBizID(vCrnCode)) {
				alert("사업자 번호가 맞습니다.");
			} else {
				alert("잘못된 사업자 번호를 입력하셨습니다.");
			}
		} else {
			alert("사업자 번호 자리수가 맞지 않습니다.");
			return false;
		}
	};

	function setDisplay() {
		if ($('input:radio[id=bbb]').is(':checked')) {
			$('#divId').show();
		} else {
			$('#divId').hide();
		}if ($('input:radio[id=aaa]').is(':checked')) {
			$('#bus').show();
		} else {
			$('#bus').hide();
		}
	}
	function findAddr() {
		new daum.Postcode({
			oncomplete : function(data) {

				console.log(data);

				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('member_post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("member_addr").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("member_addr").value = jibunAddr;
				}
			}
		}).open();
	}
</script>
</head>
<body>
	<form name="host_joinform" action="host_joinProcess.net" method="post">
		<h1>사업자 회원가입</h1>
		<hr>
		<b>사업자 구분</b>
		
			<input type="radio" name="business" value="개인" onchange="setDisplay()" id="aaa"checked><span>개인</span>
			<input type="radio" name="business" value="법인" onchange="setDisplay()"id="bbb"checked><span>법인</span>
			
		<div id="divId">
		<b>법인명</b>
		<input type="text" name="colp_name" maxLength="20" >
		<b>법인번호</b>
		 <input type="text" name="j1"  maxlength="6" size="8" >-
 		<input type="text" name="j2"  maxlength="7" size="8" >
		</div>
	
		
		<b>아이디</b> 
		<input type="text" name="id" placeholder="Enter id"required maxLength="12"> <span id="message"></span> 
		<b>비밀번호</b>
		<input type="password" name="pass1" placeholder="Enter password"required> 
			
			<b>생년월일</b> 
			<select name="year">
			<option value="">-- 선택 --</option>
			<option value="1995">1995</option>
			<option value="1996">1996</option>
			<option value="1997">1997</option>
			<option value="1998">1998</option>
			<option value="1999">1999</option>
			<option value="2000">2000</option>
			<option value="2000">2001</option>
			<option value="2000">2002</option>
			<option value="2000">2003</option>
			<option value="2000">2004</option>
			<option value="2000">2005</option>
			<option value="2000">2006</option>
			<option value="2000">2007</option>
			<option value="2000">2008</option>
			<option value="2000">2009</option>
			<option value="2000">2010</option>
			<option value="2000">2011</option>
			<option value="2000">2012</option>
			<option value="2000">2013</option>
			<option value="2000">2014</option>
			<option value="2000">2015</option>
			<option value="2000">2016</option>
			<option value="2000">2017</option>
			<option value="2000">2018</option>
			<option value="2000">2019</option>
			<option value="2000">2020</option>
			<option value="2000">2021</option>
			<option value="2000">2022</option>
		</select> <select name="month">
			<option value="">-- 선택 --</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
		</select> <select name="day">
			<option value="">-- 선택 --</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
		</select> 
		<b>이름</b>
		 <input type="text" name="name" placeholder="Enter name"maxLength="5" required> 
		 
		 <div id=bus>
			<b>상호명</b> 
			<input type="text"  name="business_name" placeholder="Enter business_name" maxLength="5"> 
			<b>사업자 번호</b> 
	<input type="text" name="busino"  size="10" maxlength="10" id="COMPANY_NO"> 
	<input type="button" name="button" value="확인하기"onClick="fnCheckCRN(this.form.busino.value)"> 
	</div>
	
			<b>주소</b>
  <input id="member_post" name="addrzipnum" type="text" placeholder="Zip Code" readonly onclick="findAddr()">
  <input id="member_addr"  name="addrbasic" type="text" placeholder="Address" readonly> <br>
  <input type="text" name="addrdetail" placeholder="Detailed Address">
			
			
			<b>이메일 주소</b> <input
			type="text" name="email" placeholder="Enter email" maxLength="30"
			required> <span id="email_message"></span>
		<div class="clearfix">
			<button type="submit" class="submitbtn">회원가입</button>
			<button type="reset" class="cancelbtn">다시작성</button>
		</div>
	</form>
</body>
</html>