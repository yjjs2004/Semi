<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <title>TEUM | 틈을 채우다</title>
    <link rel="stylesheet" href="/css/reset.css" type="text/css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/company/accommodation/detail.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <script src="/js/accommodationLists/accommodationDetail.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>


<body>
    <jsp:include page="/inc1/header1.jsp"/>
    

        
    <div class="main">
        <section class="title">
            <div class="pic">
                <div class="main-img">
                    <img src = "/images/company/호텔/서울/강남,역삼,삼성/신라스테이_삼성/메인.jpg" alt= "신라스테이 삼성"><br>
                </div>
                
                <!-- <div class="cliper-btn prev-btn">
                    <i class="fas fa-angle-left"></i>
                </div>
                <div class="cliper-btn next-btn">
                    <i class="fas fa-angle-right"></i>
                </div> -->
                <div class="cliper">
                    <ul>
                        <li><img src="/images/company/호텔/서울/강남,역삼,삼성/신라스테이_삼성/스탠다드_더블/1.jpg"></li>
                        <li><img src="/images/company/호텔/서울/강남,역삼,삼성/신라스테이_삼성/스탠다드_트윈/1.jpg"></li>
                        <li><img src="/images/company/호텔/서울/강남,역삼,삼성/라마다호텔/슈페리얼트윈/1.jpg"></li>
                        <li><img src="/images/company/호텔/서울/강남,역삼,삼성/라마다호텔/슈페리얼더블/1.jpg"></li> 
                        <li><img src="/images/company/호텔/서울/강남,역삼,삼성/머큐어_앰배서더_강남_쏘도베/디럭스 더블/1.jpg"></li>
                    </ul>
                </div>
            </div>
            <div class="main-info">
                <h1>신라스테이 삼성</h1>
                <h2>서울 강남구 삼성동 168-3</h2>
                <div class="rule">
                    <p>취소 및 환불 규정</p>
                    <ul>
                        <li> → 체크인일 기준 1일전 18시까지 : 100% 환불</li>
                        <li> → 체크인일 기준 1일전 18시이후~당일 : 환불불가</li>
                        <li> → 취소, 환불시 수수료가 발생할 수 있습니다</li>
                    </ul>
                </div>
                <div class="check">
                    <p>확인사항 및 기타</p>
                    <ul>
                        <li> → 거리두기 단계 상향에 따라 일부 시설 이용이 제한될 수 있습니다</li>
                        <li> → 최대인원 초과시 입실 불가합니다</li>
                        <li> → 위의 정보는 호텔의 사정에 따라 변경될 수 있습니다</li>
                        <li> → 해당 이미지는 실제와 상이 할 수 있습니다</li>
                        <li> → 체크인 시 배정 또는 베드타입 미기재 상품은 특정객실과 베드타입을 보장하지 않습니다</li>
                        <li> → 해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
                        <li> → 미성년자는 보호자 동반없이 이용하실 수 없습니다</li>
                    </ul>
                </div>
            </div>
        </section>


            
        
        <section class="room-sec">

            <div class="subtitle">
            <h1>객실 안내 및 예약</h1>
                <ul>
                <li class="reserve-date">예약 날짜</li>
                <li>&nbsp;&nbsp;/&nbsp;&nbsp;</li>
                <li class="review">리뷰</li>
                </ul>
                <input type="date" name="start-date" class="form-option date start-date" required> ~ 
                <input type="date" name="end-date" class="form-option date end-date" required>
            </div>
            <form class="room-form">
                <section>
                    <!-- <div class="radio-container">
                        <input type="radio" name="radio" id="radio-1" class="radio" required>
                        <label for="radio-1"><span></span></label>
                    </div> -->
                    <div class="room-container">
                        <div class="room-img-container">
                            <img src="/images/company/호텔/서울/강남,역삼,삼성/신라스테이_삼성/스탠다드_트윈/메인.jpg" alt= "신라스테이 삼성">
                        </div>
                        <div class="room-detail-container">
                            <div class="room-room">
                                <span>스탠다드 트윈</span>
                            </div>
                            <div class="room-bed-count">
                                <div>침대개수</div>
                                <div>2</div>
                            </div>
                            <div class="room-max-headcount">
                                <div>최대 수용인원</div>
                                <div>2</div>
                            </div>
                            <div class="room-price">
                                <div>가격</div>
                                <div>128,260원</div>
                            </div>
                            <div class="highlight-btn-container">
                                <a href=""><input type="button" class="highlight-btn" value="예약하기"></a>
                            </div>
                        </div>
                    </div>
                </section>
                <section>
                    <!-- <div class="radio-container">
                        <input type="radio" name="radio" id="radio-2" class="radio" required>
                        <label for="radio-2"><span></span></label>
                    </div> -->
                    <div class="room-container">
                        <div class="room-img-container">
                            <img src="/images/company/호텔/서울/강남,역삼,삼성/신라스테이_삼성/스탠다드_더블/메인.jpg">
                        </div>
                        <div class="room-detail-container">
                            <div class="room-room">
                                <span>스탠다드 더블</span>
                            </div>
                            <div class="room-bed-count">
                                <div>침대개수</div>
                                <div>1</div>
                            </div>
                            <div class="room-max-headcount">
                                <div>최대 수용인원</div>
                                <div>2</div>
                            </div>
                            <div class="room-price">
                                <div>가격</div>
                                <div>500,260원</div>
                            </div>
                            <div class="highlight-btn-container">
                                <a href=""><input type="button" class="highlight-btn" value="예약하기"></a>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="btn-box">
                    <input type="button" value="삭제" class="btn delete-btn">
                </div>
            </form>
        </section>
    </div>

    
    <section class="sec_footer">
        <footer>
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