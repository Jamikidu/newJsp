<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반인페이지</title>
</head>
<%
	String name = request.getParameter("name");

%>
<body>
<h1>일반인페이지</h1>
<h4>이름: <%=name %></h4>
<h4>주민등록번호: <%=request.getParameter("frontNum") %> - <%=request.getParameter("backNum") %></h4>
</body>
</html>