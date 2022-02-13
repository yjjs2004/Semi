<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
      <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>숙소현황 | 틈을 채우다</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    
    <script src="http://code.jquery.com/jquery-latest.js"></script>
<%-- <script src="${pageContext.request.contextPath}/js/slideShow.js"></script> --%>
<script src="${pageContext.request.contextPath}/js/button.js"></script>
<%-- <script src="${pageContext.request.contextPath}/js/map.js"></script> --%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
<link rel="stylesheet"
	href="plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet"
	href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<link rel="stylesheet"
	href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/jqvmap/jqvmap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/summernote/summernote-bs4.min.css">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c751f51d711b8cb1563dba0f5bdaf7c6&librarys=services"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://kit.fontawesome.com/034bf89b43.js" crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src="${pageContext.request.contextPath}/js/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/js/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/summernote-lite.css">
  <!--  -->
  <link href="${pageContext.request.contextPath}/css/join.css"
	type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	 <jsp:include page="../person/header.jsp" />
	 <br><br>
	 
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/layout.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/company/userInfo/myAccommodationLists.css">  
    <script>
	$(function() {
		$("input[value='${personinfo.gender}']").prop('checked',true);
		var checkid = true;
		var checknick = true;
		var checkemail = true;
		var checkpw = true;
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
   

    <section class="container-sec">
        <div class="container2">
            <aside id="aside" class="aside">
                <!-- <h1>게시판</h1> -->
                <ul style="width:230px;">
                     <li class="active"><a href="${pageContext.request.contextPath}/update.com"><i class="far fa-user-circle"></i>&nbsp;&nbsp;회원정보수정</a></li>
                    <li><a href="${pageContext.request.contextPath}/faqview.com"><i class="fa-solid fa-pen-to-square"></i>&nbsp;&nbsp;문의하기</a></li>
                    <li><a href="${pageContext.request.contextPath}/faqinfo.com"><i class="fa-solid fa-chalkboard-user"></i>&nbsp;&nbsp;문의내역</a></li>
                    <li><a href="${pageContext.request.contextPath}/faq.com"><i class="fa-solid fa-question"></i>&nbsp;&nbsp;자주묻는질문</a></li>
                </ul>
            </aside>
            <main id="main" class="main">
                <div class="breadcrumb">
                    <ul class="breadcrumb-list">
                        <li><i class="fas fa-home"></i>&nbsp;&nbsp;HOME&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-right"></i> </li>
                        <li>&nbsp;&nbsp;&nbsp;마이페이지&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-right"></i></li><li>&nbsp;&nbsp;&nbsp;회원정보수정</li>
                        </ul>
                        </div>
            <section>
           <form name="updateform" action="updateProcess.com" method="post">
		<h1>회원가입</h1>
		<hr>
		<b>아이디</b> <input type="text" name="id" value="${personinfo.id }"
			readOnly><b>닉네임</b>
		<input type="text" name="nick" value="${personinfo.nickname }" readOnly>
		<b>비밀번호</b> <input
			type="password" name="pass" value="${personinfo.password }" readOnly>
		<b>비밀번호 확인</b> <input type="password" name="passcheck"
			value="${personinfo.password }" readOnly>
		<b>휴대폰 번호</b> <input type="text" name="tel"
			value="${personinfo.tel }"> <b>이름</b> <input
			type="text" name="name" value="${personinfo.name }" readOnly
			> <b>생년월일</b> <input type="text" name="birth"
			value="${personinfo.birth }"> <b>성별</b>
		<div>
			<input type="radio" name="gender" value="남"><span>남자</span> <input
				type="radio" name="gender" value="여"><span>여자</span>
		</div>

 <input type="text" name="postcode" id="postcode" placeholder="우편번호">
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" name="address" id="address" placeholder="주소"><br>
<input type="text" name="detailAddress" id="detailAddress" placeholder="상세주소">
<input type="text" name="sample6_extraAddress" id="sample6_extraAddress" placeholder="참고항목"> <b>이메일 주소</b> <input type="text"
			name="email" id="email" value="${personinfo.email }">
		<span id="email_message"></span>
		<div class="clearfix">
			<button type="submit" class="submitbtn">수정</button>
			<button type="reset" class="cancelbtn">다시작성</button>
		</div>
	</form>
            </section>

            </main>
        </div>
    </section>



    <section>
        <footer id="footer" class="footer">
            <div>
                <ul>
                    <li>
                        <a href="">회사소개</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">이용약관</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">개인정보처리방침</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">사업자정보확인</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">여기어때 마케팅센터</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">액티비티 호스트센터</a>
                        <span>|</span>
                    </li>
                    <li><a href="">콘텐츠산업진흥법에의한 표시</a></li>
                </ul>
        
                <p><b>고객행복센터 1577-8282</b>   오전 09:00 ~ 오후18:00</p>
    
                <address>
                    <span>(주)TEUM</span>
                    주소 : 서울특별시 종로구 인사동길 12 대일빌딩 15층
                    <br>대표이사 : 신중언 | 사업자등록번호 777-11-45678
                    <br>통신판매번호 : 2020-서울강남-12345 | 관광사업자 등록번호 : 제 1324-55호
                    <br>전화번호 : 010-1111-2222
                    <br>전자우편주소 : teum@teum.co.kr
                    <br>Copyright TEUM COMPANY Corp. All rights reserved.
                </address>
            </div>
        </footer>
    </section>
</body>

</html>