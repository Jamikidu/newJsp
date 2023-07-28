<%@page import="oops_p.Exam"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numReg2</title>
</head>
<body>
<%
	String [] per = request.getParameterValues("per");
	String [] kor = request.getParameterValues("kor");
	String [] eng = request.getParameterValues("eng");
	String [] math = request.getParameterValues("math");
	String [] soc = request.getParameterValues("soc");
	
	Exam [] exam = new Exam[per.length];
	
	for(int i=0; i<per.length; i++){
		exam[i] = new Exam(per[i], kor[i], eng[i], math[i], soc[i]);
	}
		
	for(int i=0; i < exam.length ; i++) {
		exam[i].rankCalc(exam);
		System.out.println(exam[i]);
	}
	// Exam 클래스 안에서 계산되기 때문에 필요없음
	/*int [] sum = new int[per.length];
	float [] avg = new float[per.length];
	for(int i=0; i<sum.length; i++){
		sum[i] += Integer.parseInt(kor[i])+Integer.parseInt(eng[i])+Integer.parseInt(math[i]);
		avg[i] += (float)sum[i] / 3;
	};*/
%>
<h1>numReg</h1>
<!-- 출력부 -->
<table border="">
	<tr>
		<th>&emsp;이름&emsp;</th>
		<th>&emsp;국어&emsp;</th>
		<th>&emsp;영어&emsp;</th>
		<th>&emsp;수학&emsp;</th>
		<th>&emsp;사회&emsp;</th>
		<th>&emsp;총점&emsp;</th>
		<th>&emsp;평균&emsp;</th>
		<th>&emsp;등급&emsp;</th>
		<th>&emsp;등수&emsp;</th>
	</tr>
	
	 <% for(int i=0;i<per.length;i++){ %>
	 <tr align="center">
		<td><%=per[i] %></td>
		<td><%=kor[i] %></td>
		<td><%=eng[i] %></td>
		<td><%=math[i] %></td>
		<td><%=soc[i] %></td>
		<td><%=exam[i].tot %></td>
		<td><%=exam[i].avg %></td>
		<td><%=exam[i].grade%></td>
		<td><%=exam[i].rank%></td>
		
	</tr>
	<% } %>
</table>
</body>
</html>