<%@page import="basic_p.Stud"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session/make</title>
</head>
<body>
<h1>session/make</h1>
<%
	session.setAttribute("pname", "장동건");
	session.setAttribute("no", 123.456);
	session.setAttribute("arr", new int[]{33,55,11,88});
	session.setAttribute("st", new Stud("이효리",77,86,92));

%>
</body>
</html>