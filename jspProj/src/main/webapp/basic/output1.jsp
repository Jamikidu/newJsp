<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int value = Integer.parseInt(request.getParameter("value1"));
	out.println(value);

%>