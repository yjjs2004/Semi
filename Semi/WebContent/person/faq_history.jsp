<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "scott";
	String pwd = "tiger";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String sql = "select faq_seq, FAQ_SUBJECT, FAQ_DATE, FAQ_COMPLETE from faq";%>
    
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
<%
		try {

		Class.forName("oracle.jdbc.driver.OracleDriver");

		conn = DriverManager.getConnection(url, uid, pwd);

		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);
	%>
<div class="container">
  <h2>Hover Rows</h2>
  <p>The .table-hover class enables a hover state (grey background on mouse over) on table rows:</p>            
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
    <%
			while (rs.next()) {
		%>
      <tr>
        <td><%=rs.getInt("faq_seq")%></td>
        <td><%=rs.getString("FAQ_SUBJECT")%></td>
        <td><%=rs.getDate("FAQ_DATE")%></td>
        <td><%=rs.getDate("FAQ_COMPLETE")%></td>
      </tr>
    </tbody>
    
    <%
		}
	} catch (Exception e) {
	e.printStackTrace();
	} finally {
	try {
	if (rs != null) {
		rs.close();
	}
	if (stmt != null) {
		stmt.close();
	}
	if (conn != null) {
		conn.close();
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	}
	%>
  </table>
</div>
</body>
</html>