<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>SummerNoteExample</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/js/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/js/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/summernote-lite.css">
  <!--  -->
  <style>
  form{text-align:center;}
  </style>
</head>
<body>
<form method="post" action="faqregist.net">
<!--  아이디 부분 추가해야됨 -->
<label for="option">문의 종류</label>
<select id="faq" name="faq" size="1">
<option value="">환불</option>
<option value="">예약변경</option>
<option value="">결제</option>
<option value="">잘못된 정보</option>
</select>
<br>
<b>제목</b>
<input type="text" id="subject" name="subject" placeholder="제목을 입력해 주세요.">
<div class="container">
  <textarea class="summernote" name="editordata"></textarea>    
</div>
</form>
<script>
$('.summernote').summernote({
	  height: 150,
	  lang: "ko-KR"
	});
</script>
</body>
</html>