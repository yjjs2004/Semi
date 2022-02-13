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
  
    <title>예약관리 | 틈을 채우다</title>
    <link rel="stylesheet" href="css2/reset.css">
    <link rel="stylesheet" href="css2/layout.css">
    <link rel="stylesheet" href="css2/company/userInfo/reservationInfo.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	<script src="/js/company/userInfo/reservationInfo.js"></script>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/company/userInfo/reservationInfo.css">
</head>

<body>
   

    <section class="container-sec">
        <div class="container2">
            <aside id="aside" class="aside">
                <!-- <h1>게시판</h1> -->
                <ul style="width:230px;">
                    <li><a href="${pageContext.request.contextPath}/hostUpdate.net"><i class="far fa-user-circle"></i>&nbsp;&nbsp;회원정보수정</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/res_detail.net"><i class="far fa-calendar-check"></i>&nbsp;&nbsp;예약관리</a></li>
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
                <section class="reservation-list-sec">
                    <h1>예약관리</h1>
                    <section class="category-sec">
                        <div class="category-bar">
                            <ul>
                                <li>
                                    <a class="category-img ${(accType==0)?'selected':''}" href="reservationInfo">
                                        <img src="../../images/main/all-icon.png" alt="">
                                        <span>전체</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="category-img ${(accType==1)?'selected':''}" href="?accType=1">
                                        <img src="../../images/main/hotel-icon.png" alt="">
                                        <span>호텔</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="category-img ${(accType==2)?'selected':''}" href="?accType=2">
                                        <img src="../../images/main/motel-icon.png" alt="">
                                        <span>모텔</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="category-img ${(accType==3)?'selected':''}" href="?accType=3">
                                        <img src="../../images/main/guesthouse-icon.png" alt="">
                                        <span>게스트하우스</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="category-img ${(accType==4)?'selected':''}" href="?accType=4">
                                        <img src="../../images/main/resort-icon.png" alt="">
                                        <span>리조트</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="category-img ${(accType==5)?'selected':''}" href="?accType=5">
                                        <img src="../../images/main/pension-icon.png" alt="">
                                        <span>펜션</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </section>
                    <div class="table-container">
                        <div>
                            <select name="order-category" id="">
                                <option value="체크인날짜순">체크인날짜순</option>
                                <option value="예약자이름순">예약자이름순</option>
                                <option value="예약상태순">예약상태순</option>
                            </select>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <td>목록</td>
                                    <td>숙소명</td>
                                    <td>숙소종류</td>
                                    <td>인원</td>
                                    <td>금액</td>
                                    <td>체크인</td>
                                    <td>체크아웃</td>
                                    <td>예약자</td>
                                    <td>상태</td>
                                    <td>비고</td>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${list }" var="item" varStatus="status">
                            
                                <tr>
                                    <td>${item.rownum }</td>
                                    <td>${item.accName }</td>
                                    <td class="acc-type">${item.accTypeId }</td>
                                    <c:if test="${item.headcount == 0 }">
                                    	<td>정원</td>
                                    </c:if>
                                    <c:if test="${item.headcount != 0 }">
                                    	<td>${item.headcount }인</td>
                                    </c:if>
                                    
                                    <td><fmt:formatNumber value="${item.price }" pattern="#,###" />원</td>
                                    <td>${item.checkinDate }</td>
                                    <td>${item.checkoutDate }</td>
                                    <td>${item.userName }</td>
                                    
                                		<c:if test="${item.cancelStatus == 0 }">
                                			<c:set var="now" value="<%=new java.util.Date()%>" />
                                			<c:choose>
                                				<c:when test="${item.checkinDate  >= now}">
                                					<td>이용예정</td>
                                				</c:when>
                                				<c:otherwise>
                                					<td>이용완료</td>
                                				</c:otherwise>
                                			</c:choose>
                                		</c:if>
                                		<c:if test="${item.cancelStatus == 1 }">
                                			<td>취소</td>
                                		</c:if>
                                    
                                    <td><button><a href="detail?reservationId=${item.id }">상세보기</a></button></td>
                                </tr>
                            </c:forEach>
                               
                                <tr>
                                    <td colspan="10" class="no-border">
                                        <div class="pager-container">
													<!--start index 구하기! -->
													<c:set var="page" value="${(empty param.page)?1:param.page }"/>
													<c:set var="startNum" value="${page-(page-1)%5}"/>
													<c:set var="lastNum" value="${pageLastCount }"/>
													<div class="btn btn-prev">
														<c:if test="${startNum > 1 }">
															<span><a href="?page=${startNum-1 }&accType=${accType}">이전</a></span>
														</c:if>
														<c:if test="${startNum <= 1 }">
															<span><a href="" onclick="alert('이전페이지가 없습니다.');">이전</a></span>
														</c:if>
													</div>
													<ul class="pager-list">
														<c:forEach var="i" begin="0" end="4" varStatus="status">
															<c:if test="${startNum+i <=lastNum }">
																<li class="${(page == (startNum+i))?'active-page':'' }"><a href="?page=${i+startNum }&accType=${accType}">${i+startNum }</a></li>
															</c:if>
														</c:forEach>
														
													</ul>
													<div class="btn btn-next">
														<c:if test="${startNum+4<lastNum }">
															<span><a href="?page=${startNum+5 }&accType=${accType}">다음</a></span>
														</c:if>
														<c:if test="${startNum+4>=lastNum }">
															<span><a href="" onclick="alert('다음페이지가 없습니다.');">다음</a></span>
														</c:if>
													</div>
												</div>
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
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