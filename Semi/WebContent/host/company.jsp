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
  
    <title>업체등록 | 틈을 채우다</title>
    <link rel="stylesheet" href="/css/reset.css" type="text/css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/company/accommodation/reg.css ">
    <link rel="preconnect" href="https//fonts.gstatic.com">
    
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
     <Script src="/js/company/accommodation/reg.js"></Script>
	
</head>

<body>
   <jsp:include page="header1.jsp"/>
    
  
    <main>
    
        <div>
         <h1><img src="images/company/reg.png"></h1>
         <div class="megabox">
            <div class="content-box">
               <form action="room_process.net" method="post" name="company">
                  <div class="insert-box">
                     <em style="color: red;">*</em>업체명<br>
                     <input type="text" class="text-box acc-name" name="acc-name" placeholder="틈 호텔" required>
                  </div>
                  <div class="insert-box"><em style="color: red;">*</em>전화번호<br> 
                     <input type="tel" class="text-box phone" name="phone" placeholder="010-1111-2222 또는 02-1111-2222" required>
                  </div>
                  <div class="insert-box">
                     <em style="color: red;">*</em>위치<br>
                     <select name="big-location" class="big-location">
                        <option value="서울">서울</option>
                        <option value="제주">제주</option>
                        <option value="부산">부산</option>
                        <option value="강원">강원</option>
                        <option value="경기">경기</option>
                        <option value="인천">인천</option>
                        <option value="경상">경상</option>
                        <option value="전라">전라</option>
                        <option value="충청">충청</option>
                     </select>
                  
                     <select name="small-location" class="small-location">
                        <!-- 서울 -->
                        <option value="강남구">강남구</option>
                        <option value="강동구">강동구</option>
                        <option value="강북구">강북구</option>
                        <option value="강서구">강서구</option>
                        <option value="관악구">관악구</option>
                        <option value="광진구">광진구</option>
                        <option value="구로구">구로구</option>
                        <option value="금천구">금천구</option>
                        <option value="노원구">노원구</option>
                        <option value="도봉구">도봉구</option>
                        <option value="동대문구">동대문구</option>
                        <option value="동작구">동작구</option>
                        <option value="마포구">마포구</option>
                        <option value="서대문구">서대문구</option>
                        <option value="서초구">서초구</option>
                        <option value="성동구">성동구</option>
                        <option value="성북구">성북구</option>
                        <option value="송파구">송파구</option>
                        <option value="양천구">양천구</option>
                        <option value="영등포구">영등포구</option>
                        <option value="용산구">용산구</option>
                        <option value="은평구">은평구</option>
                        <option value="종로구">종로구</option>
                        <option value="중구">중구</option>
                        <option value="중랑구">중랑구</option>
                     </select>
                  </div>
                  <div class="insert-box">
                     <em style="color: red;">*</em>상세주소<br>
                     <input type="text" class="text-box address" name="detail-address" placeholder="서울특별시 종로구 인사동길 12 대일빌딩 15층" required>
                  </div>
                  <div class="insert-box">
                     <em style="color: red;">*</em>숙소유형  
                     <select name="acc-type">
                        <option value="호텔">호텔</option>
                        <option value="모텔">모텔</option>
                        <option value="게스트하우스">게스트하우스</option>
                        <option value="리조트">리조트</option>
                        <option value="펜션">펜션</option>
                     </select>
                  </div>
                  <div class="insert-box">
                     <em style="color: red;">*</em>메인 사진  
                     <input type="file" accept="image acc_image" name="acc-file" required>
                  </div>
                  <div class="img-box">
                  </div>
                  <!-- <div class="insert-button">
                     <input type="button" class="button add-button" value="방 추가">
                     <input type="button" class="button del-button" value="방 삭제">
                  </div> -->
                     
                  <div class="box">
                     <section class="add-room">
                        <div>
                           <em style="color: red;">*</em>룸 이름<br>
                           <input type="text"  class="text-box room-name" name="room-name"  placeholder="스위트룸" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>최대 인원 수<br>
                           <input type="text" class="text-box max-headcounter" name="max-headcount" placeholder="2" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>침대 갯수<br>
                           <input type="text" class="text-box bed-count" name="bed-count" placeholder="2" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>가격<br>
                           <input type="text" class="text-box price" name="price" placeholder="100000 (돈의 단위는 적지 마세요.)" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>룸 이미지1<br>
                           <input type="file" accept="image text-box" class="text-box" name="room-file" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>룸 이미지2<br>
                           <input type="file" accept="image text-box" class="text-box" name="room-file" required>
                        </div>
                     </section>  
                  </div>
                     
                  <section>
                     <div class="btn-box">
                        <input type="submit" class="btn submit-btn" value="등록하기">
                     </div>
                  </section>
               </form>
            </div>


         </div>
        </div>
    </main>
    
    <jsp:include page="pooter.jsp"/>
        
   
    </body>
</html>