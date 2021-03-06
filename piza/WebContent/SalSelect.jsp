<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="piza.dbconnection" %>
<%
	ResultSet rs = null;
	String sql = "select * from piza_tbl";
	rs=dbconnection.query(sql);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="SalSelect.css"/>
</head>
<body>
<div id="wrap">
	<div id="header">
		<h1>피자전문점 판매관리 프로그램 ver1.0</h1>
	</div>
	<div id="nav">
		<ul>
			<li><a href="index.jsp">매출전표등록</a></li>
			<li><a href="SalSelect.jsp">통합매출조회</a></li>
			<li><a href="marketSalSelect.jsp">지점별매출현황</a></li>
			<li><a href="productSalSelect.jsp">상품별매출현황</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</div>
	<div id="section">
	<h2>통합매출조회</h2>
		<table>
			<colgroup>
				<col width="120px"/>
				<col width="100px"/>
				<col width="100px"/>
				<col width="80px"/>
				<col width="120px"/>
				<col width="100px"/>
				<col width="100px"/>
			</colgroup>
			<tr>
				<th>매출전표번호</th>
				<th>지점</th>
				<th>판매일자</th>
				<th>피자코드</th>
				<th>피자명</th>
				<th>판매수량</th>
				<th>매출액</th>
			</tr>
			<%
				while(rs.next()){
			%>
			<tr>
				<th><%=rs.getString(1)%></th>
				<th><%=rs.getString(2)%></th>
				<th><%=rs.getString(3)%></th>
				<th><%=rs.getString(4)%></th>
				<th><%=rs.getString(5)%></th>
				<th><%=rs.getString(6)%></th>
				<th><%=rs.getString(7)%></th>
			</tr>
			<%
				}
			%>
		</table>
	</div>
	<div id="footer">
		Copyright 2019 고승원 © All Rights Reserved
	</div>
</div>
</body>
</html>