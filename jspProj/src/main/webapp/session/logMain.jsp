<%@page import="basic_p.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인메인</title>
</head>
<body>
<h1>로그인 메인</h1>
<%
	if(session.getAttribute("mem")!=null){
		Member mem = (Member)session.getAttribute("mem");
%>
<%=mem.getPname() %>님 안녕하세요
<a href="logout.jsp">로그아웃</a>
<%} else { %>
<form action="loginReg.jsp">
	id<input type="text" name="pid" />
	pw<input type="text" name="pw" />
	<input type="submit" value="로그인" />
</form>
<%} %>
</body>
</html>