<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
      <meta charset="UTF-8">
    <title>Igoda 문의하기</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
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
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src="${pageContext.request.contextPath}/js/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/js/lang/summernote-ko-KR.js"></script>
  
  <!--  -->
  <style>
  form{text-align:center;}
  </style>	
	 <jsp:include page="../person/header.jsp" />

	 
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/layout.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/company/userInfo/myAccommodationLists.css">  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/summernote-lite.css">
</head>

<body>
   	 <br><br><br>

    <section class="container-sec">
        <div class="container2">
            <aside id="aside" class="aside">
                <!-- <h1>게시판</h1> -->
                <ul style="width:230px;">
                     <li><a href="${pageContext.request.contextPath}/update.com"><i class="far fa-user-circle"></i>&nbsp;&nbsp;회원정보수정</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/faqview.com"><i class="fa-solid fa-pen-to-square"></i>&nbsp;&nbsp;문의하기</a></li>
                    <li><a href="${pageContext.request.contextPath}/faqinfo.com"><i class="fa-solid fa-chalkboard-user"></i>&nbsp;&nbsp;문의내역</a></li>
                    <li><a href="${pageContext.request.contextPath}/faq.com"><i class="fa-solid fa-question"></i>&nbsp;&nbsp;자주묻는질문</a></li>
                </ul>
            </aside>
            <main id="main" class="main">
                <div class="breadcrumb">
                    <ul class="breadcrumb-list">
                        <li><i class="fas fa-home"></i>&nbsp;&nbsp;HOME&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-right"></i> </li>
                        <li>&nbsp;&nbsp;&nbsp;마이페이지&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-right"></i></li><li>&nbsp;&nbsp;&nbsp;문의하기</li>
                        </ul>
                        </div>
            <section>
           <form method="post" action="faqregist.com">
<!--  아이디 부분 추가해야됨 -->
<label for="option">문의 종류</label>
<select id="faq" name="faq" size="1">
<option value="1">환불</option>
<option value="2">예약변경</option>
<option value="3">결제</option>
<option value="4">잘못된 정보</option>
</select>
<br>
<b>제목</b>
<input type="text" id="subject" name="subject" placeholder="제목을 입력해 주세요.">
<div class="container">
  <textarea class="summernote" name="editordata"></textarea>    
</div>
<input type="submit" value="등록">
</form>
<script>
$('.summernote').summernote({
	  height: 150,
	  lang: "ko-KR"
	});
</script>
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