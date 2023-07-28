<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	int [] sum = new int[per.length];
	float [] avg = new float[per.length];
	for(int i=0; i<sum.length; i++){
		sum[i] += Integer.parseInt(kor[i])+Integer.parseInt(eng[i])+Integer.parseInt(math[i]);
		avg[i] += (float)sum[i] / 3;
	};
%>
<h1>numReg</h1>
<!-- 출력부 -->
<table border="">
	<tr>
		<th>이름</th>
		<th>국어</th>
		<th>수학</th>
		<th>영어</th>
		<th>총점</th>
		<th>평균</th>
	</tr>
	
	 <% for(int i=0;i<per.length;i++){ %>
	 <tr>
		<td><input type="text" value="<%=per[i] %>" /></td>
		<td><input type="text" value="<%=kor[i] %>" /></td>
		<td><input type="text" value="<%=eng[i] %>" /></td>
		<td><input type="text" value="<%=math[i] %>" /></td>
		<td><input type="text" value="<%=sum[i] %>" /></td>
		<td><input type="text" value="<%=avg[i] %>" /></td>
	</tr>
	<% } %>
</table>
</body>
</html>