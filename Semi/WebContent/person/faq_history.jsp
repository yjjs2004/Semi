<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>문의 내역</title>
</head>
<body>
<div class="container">
  <h2>문의 내역</h2>
  <p>${faqinfo.faq_id } 님의 문의 내역입니다.</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>문의넘버</th>
        <th>제목</th>
        <th>날짜</th>
        <th>상태</th>
      </tr>
    </thead>
    <tbody>
  
      <tr>
        <td>${faqinfo.seq}</td>
        <td>${faqinfo.FAQ_SUBJECT }</td>
        <td>${faqinfo.FAQ_DATE }</td>
        <td>${faqinfo.FAQ_COMPLETE}</td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>