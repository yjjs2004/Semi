<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>회원정보수정</title>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	<script src="/js/company/userInfo/updateInfo.js"></script>
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
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	
	<jsp:include page="header2.jsp"/>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css2/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/layout.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/company/userInfo/updateInfo.css">
</head>

<body>
  

    <section class="container-sec">
        <div class="container2">
            <aside id="aside" class="aside">
                <!-- <h1>게시판</h1> -->
                <ul style="width:230px;">
                     <li class="active"><a href="${pageContext.request.contextPath}/hostUpdate.net"><i class="far fa-user-circle"></i>&nbsp;&nbsp;회원정보수정</a></li>
                    <li><a href="${pageContext.request.contextPath}/res_detail.net"><i class="far fa-calendar-check"></i>&nbsp;&nbsp;예약관리</a></li>
                    <li><a href="${pageContext.request.contextPath}/list.net"><i class="fas fa-map-marked-alt"></i>&nbsp;&nbsp;숙소현황</a></li>
                    <li><a href="${pageContext.request.contextPath}/reg.net"><i class="fas fa-sign-in-alt"></i>&nbsp;&nbsp;숙소등록</a></li>
                </ul>
            </aside>
            <main id="main" class="main" style="min-height:600px;">
                <div class="breadcrumb">
                    <ul class="breadcrumb-list">
                        <li><i class="fas fa-home"></i>&nbsp;&nbsp;HOME&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-right"></i> </li>
                        <li>&nbsp;&nbsp;&nbsp;마이페이지</li>
                    </ul>
                </div>
                <section class="update-info-sec">
                    <h1>회원정보수정</h1>
                    <div class="update-form-sec">
                        <form action="main.net" method="post">
                   
                            <div class="reg-form-container">
                                 <div class="reg-form-item">
                                    <label style="font-size: 12px;" for="name" title="아이디">
                                        <em style="color: red;">*</em>
                                      아이디
                                    </label>
                                    <div class="input-box">
                                        <div>
                                            <input type="text" value="${host_id }" disabled class="id" 
                                            id="id" autocorrect="off" placeholder="asd"
                                            autocapitalize="off" autocomplete="off" aria-autocomplete="none" inputmode="text">
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="reg-form-item">
                                    <label style="font-size: 12px;" for="password" title="비밀번호">
                                        <em style="color: red;">*</em>
                                        비밀번호
                                    </label>
                                    <div class="input-box">
                                        <div>
                                            <input type="password" class="password check-validation" 
                                            placeholder="최소8자 영문/숫자/특수문자 필수" id="password" name="password" autocorrect="off" 
                                            autocapitalize="off" autocomplete="off" aria-autocomplete="none" inputmode="text">
                                            <span class="caution-mention">최소8자 영문/숫자/특수문자 필수입니다</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="reg-form-container">
                                <div class="reg-form-item">
                                    <label style="font-size: 12px;" for="email" title="이메일">
                                        <em style="color: red;">*</em>
                                        이메일
                                    </label>
                                    <div class="input-box">
                                        <div>
                                            <input type="email"  class="email"  
                                            placeholder="aaa@example.com" id="email" name="email" autocorrect="off" 
                                            autocapitalize="off" autocomplete="off" aria-autocomplete="none" inputmode="text">
                                            <span class="caution-mention">올바른 이메일 형식을 입력해주세요</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="reg-form-item">
                                    <label style="font-size: 12px;" for="name" title="이름">
                                        <em style="color: red;">*</em>
                                        이름
                                    </label>
                                    <div class="input-box">
                                        <div>
                                            <input type="text" value="${c.name }" disabled class="name" 
                                            placeholder="이름" id="name" autocorrect="off" 
                                            autocapitalize="off" autocomplete="off" aria-autocomplete="none" inputmode="text">
                                            <span class="caution-mention">한글 이름만 허용됩니다</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="reg-form-item">
                                    <label style="font-size: 12px;" for="birthday" title="생년월일">
                                        <em style="color: red;">*</em>
                                        생년월일
                                    </label>
                                    <div class="input-box">
                                        <div>
                                            <input type="text" disabled class="birthday" value="${c.birthday }"
                                            placeholder="생년월일" id="birthday" autocorrect="off" 
                                            autocapitalize="off" autocomplete="off" aria-autocomplete="none" inputmode="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="reg-form-item">
                                    <label style="font-size: 12px;" for="checkbox-2" title="회원구분">
                                        <em style="color: red;">*</em>
                                        회원구분
                                    </label>
                                    <div>
                                        <div class="member-type">
                                            <div class="checkbox-container">
                                                <input name="member-type" type="radio" id="checkbox-2" value="회원" class="checkbox" disabled required>
                                                <label for="checkbox-2"><span></span></label>
                                            </div>
                                            <div>
                                                개인
                                            </div>
                                            <div class="checkbox-container">
                                                <input name="member-type" type="radio" id="checkbox-3" value="업체" class="checkbox" checked disabled required>
                                                <label for="checkbox-3"><span></span></label>
                                            </div>
                                            <div>
                                           기업
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="button-submit">
                                <input type="submit" class="btn submit-btn" value="수정하기">
                            </div>
                        </form>
                    </div>
                </section>
            </main>
        </div>
    </section>

    <!-- <section class="userInfo_main">
        <main class="sec_userInfo_main">
            <aside>
                <h1>회원정보관리(개인)</h1>
                <ul>
                    <li>
                        <a href="">회원정보수정</a>
                    </li>
                    <li>
                        <a href="">예약관리</a>
                    </li>
                    <li>
                        <a href="">경매신청관리</a>
                    </li>
                    <li>
                        <a href="">최근살펴본상품조회</a>
                    </li>
                    <li>
                        <a href="">찜한상품조회</a>
                    </li>
                </ul>
            </aside>

            <div>
                <section>
                    <h1>회원정보수정</h1>
                    <form action="">
                        <table>
                            <tr>
                                <td>이메일</td>
                                <td colspan="2"><span>등록된 이메일정보</span></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>이름</td>
                                <td><span>등록된 이름정보</span></td>
                                <td><input type="button" value="개명신청"></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>닉네임</td>
                                <td colspan="2"><input type="text"></td>
                                <td><input type="button" value="중복확인"></td>
                            </tr>
                            <tr>
                                <td>비밀번호</td>
                                <td colspan="2"><input type="text"></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>비밀번호확인</td>
                                <td colspan="2"><input type="text"></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>연락처</td>
                                <td colspan="2"><input type="text"></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>회원구분</td>
                                <td colspan="3"><input type="radio" name="memtype">개인회원 <input type="radio"
                                        name="memtype">기업회원</td>
                            </tr>
                            <tr>
                                <td colspan="4"><input type="submit" value="수정하기"></td>
                            </tr>
                        </table>
                    </form>
                </section>
            </div>
        </main>
    </section> -->

    <jsp:include page="pooter.jsp"/>
</body>

</html>