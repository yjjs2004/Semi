<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<header style="text-align : center"> <h3>예약</h3> </header>
		<div style="margin : 0 25%; border: solid 1px black">
			<div style ="width:100">상품 정보</div>
			<hr>
			<div>
				예약자 정보<br>
				성명 <br>
				성명을 입력해주세요.<br>
							  <br>
				휴대폰 번호
				<div style="text-align: center">
					<button>인증하기</button>
				</div>
			</div>
			<hr>
			<div>
				이용자 정보<br>
				예약자 정보와 동일합니다.<br>	<%--클릭시 예약자 정보의 값을 불러온다. --%>
				성명 <br>
				성명을 입력해주세요.<br>
				후대폰 번호 <br>
				휴대폰 번호를 입력해 주세요.<br>
			</div>
			<hr>
			<div>
				<div style="float:left">
					숙소 방문 수단<br>
					선택해주세요
				</div>
				선택하기<br>
				dropdown
			</div>
			
			<hr>
			<div>금액 및 할인 정보</div>
			<hr>
			<div>결제 수단</div>
		</div>
	</div>
</body>
</html>