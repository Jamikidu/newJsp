<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session/view</title>
</head>
<body>
<h1>session/view</h1>
<%
int [] arr = (int [])session.getAttribute("arr");
%>
pname:<%=session.getAttribute("pname")%><br/>
no	:<%=session.getAttribute("no")%><br/>
arr	:<%= Arrays.toString(arr) %><br/>
st	:<%=session.getAttribute("st")%><br/>
age	:<%=session.getAttribute("age")%><br/>
</body>
</html>