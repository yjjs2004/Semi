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
    <link rel="stylesheet" href="css2/reset.css" type="text/css">
    <link rel="stylesheet" href="css2/layout.css">
    <link rel="stylesheet" href="css2/company/accommodation/reg.css ">
    <link rel="preconnect" href="https//fonts.gstatic.com">
    
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
     
     <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
     
     <script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <script src="js/slideShow.js"></script> -->
<script src="js/button.js"></script>
<!-- <script src="js/map.js"></script> -->
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
<link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<link rel="stylesheet"
	href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<link rel="stylesheet"
	href="plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="plugins/summernote/summernote-bs4.min.css">
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
    <script>
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
	 <jsp:include page="header.jsp"/>
	 <style>
	 .text{
        width:300px;
        height:100px;
        font-size:15px;
      }
	 </style>
</head>

<body>
   
    
  
    
    <main style=" margin-top: 100px;">
   
        <div>
         <h1><img src="images/company/reg.png"></h1>
         <div class="megabox">
            <div class="content-box">
               <form action="room_process.net"  method="post" enctype="multipart/form-data" name="company">
                  <div class="insert-box">
                     <em style="color: red;">*</em>숙소명<br>
                     <input type="text" class="text-box acc-name" name="name" placeholder="이름" required>
                  </div>
     
                  <div class="insert-box">
                   <em style="color: red;">*</em>주소
   <input id="member_post" name="addrzipnum" type="text" placeholder="우편번호" readonly onclick="findAddr()">
  <input id="member_addr" name="addrbasic" type="text" placeholder="주소" readonly> <br>
  <input type="text" name="addrdetail" placeholder="상세주소">
                  </div>
                  <div class="insert-box">
                     <em style="color: red;">*</em>숙소유형  
                     <select name="room_type">
                        <option value="호텔">호텔</option>
                        <option value="모텔">모텔</option>
                        <option value="게스트하우스">게스트하우스</option>
                        <option value="리조트">리조트</option>
                        <option value="펜션">펜션</option>
                     </select>
                  </div>
                  <div class="insert-box1">
                     <em style="color: red;">*</em>숙소설명<br>
                     <textarea cols="50" rows="5" wrap="hard" class="text" name="room_text"></textarea>


                  </div>
                  <div class="insert-box">
                     <em style="color: red;">*</em>메인 사진  
                     <input type="file" accept="image acc_image" name="room_img" required>
                  </div>
                  <div class="img-box">
                  </div>
                  <!--  <div class="insert-button">
                     <input type="button" class="button add-button" value="방 추가">
                     <input type="button" class="button del-button" value="방 삭제">
                     
                  </div> -->
                     
                  <div class="box">
                     <section class="add-room">
                        <div>
                           <em style="color: red;">*</em>룸 이름<br>
                           <input type="text" class="text-box room-name" name="rooms_name" placeholder="스위트룸" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>최대 인원 수<br>
                           <input type="text" class="text-box max-headcounter" name="personnel" placeholder="2" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>침대 갯수<br>
                           <input type="text" class="text-box bed-count" name="bedcount" placeholder="2" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>가격<br>
                           <input type="text" class="text-box price" name="price" placeholder="100000 (돈의 단위는 적지 마세요.)" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>룸 이미지1<br>
                           <input type="file" accept="image text-box" class="rooms_img1" name="rooms_img1" required>
                        </div>
                        <div>
                           <em style="color: red;">*</em>룸 이미지2<br>
                           <input type="file" accept="image text-box" class="rooms_img2" name="rooms_img2" required>
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
