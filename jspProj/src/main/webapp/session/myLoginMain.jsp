<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 - 로그인 메인</title>
</head>
<body>
<h1>세션 - 로그인 메인</h1>
<%
	if(session.getAttribute("id") != null){
%>
	<%=session.getAttribute("pname") %> 님 반갑습니다!<br/>
	<a href="myLogout.jsp">[로그아웃]</a>
<% }else{%>
	<form action="myLoginReg.jsp">
	id <input type="text" name="id" /> pw <input type="text" name="pw"/> 
	<input type="submit" value="로그인">
	</form>
<%} %>
</body>
</html>