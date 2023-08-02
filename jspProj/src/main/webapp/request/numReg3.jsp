<%@page import="oops_p.Exam"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numReg3</title>
</head>
<body>
<%
	String [] per = request.getParameterValues("per");  /* 사람 이름의 집합 */
	String [] kor = request.getParameterValues("kor");  /* 국어 점수의 집합 */
	String [] eng = request.getParameterValues("eng");  /* 영어 점수의 집합 */
	String [] math = request.getParameterValues("math");  /* 수학 점수의 집합 */
	String [] soc = request.getParameterValues("soc");  /* 사회 점수의 집합 */
	String [] sci = request.getParameterValues("sci");  /* 과학 점수의 집합 */
	
	Exam [] exam = new Exam[per.length];  /* Class Exam 인스턴스들의 집합 exam 을 사람 수 만큼 생성*/
	
	for(int i=0; i<per.length; i++){
		exam[i] = new Exam(per[i], kor[i], eng[i], math[i], soc[i], sci[i]);  /* i번째 인스턴스에 i번째(이름,점수들)를 입력 */
	}
		
	for(int i=0; i < exam.length ; i++) {  /* 인스턴스에 입력된 값들을 가지고 계산하는 rankCalc() 메서드 호출 */
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
<h1>numReg3</h1>
<h2>출력되라 얍!</h2>
<!-- 출력부 -->
<!-- 정렬 전 -->
<table border="">
	<tr style="background-color: #d6d6d6;">
		<th>&emsp;이름&emsp;</th>
		<th>&emsp;국어&emsp;</th>
		<th>&emsp;영어&emsp;</th>
		<th>&emsp;수학&emsp;</th>
		<th>&emsp;사회&emsp;</th>
		<th>&emsp;과학&emsp;</th>
		<th>&emsp;총점&emsp;</th>
		<th>&emsp;평균&emsp;</th>
		<th>&emsp;등급&emsp;</th>
		<th>&emsp;등수&emsp;</th>
	</tr>
	
	 <% for(int i=0;i<per.length;i++){ %>
	 <tr align="center">
		<td><%=exam[i].getName() %></td>
		<td><%=exam[i].getJum()[0] %></td>  <!-- Jum은 점수들의 집합이므로 그냥 getJum()하면 배열의 주소가 나옴 -->
		<td><%=exam[i].getJum()[1] %></td>
		<td><%=exam[i].getJum()[2] %></td>
		<td><%=exam[i].getJum()[3] %></td>
		<td><%=exam[i].getJum()[4] %></td>
		<td style="color: blue; font-weight: bold;"><%=exam[i].getTot() %></td>
		<td style="background-color: #006cb7; color: #fff; font-weight: bold;"><%=exam[i].getAvg2() %></td>
		<td style="background-color: #006cb7; color: #fff; font-weight: bold;"><%=exam[i].getGrade()%></td>
		<td style="background-color: #006cb7; color: #fff; font-weight: bold;"><%=exam[i].getRank()%></td>
		
	</tr>
	<% } %>
	
</table>
<br>
<hr>
<!-- 정렬 후 -->
<h2>정렬 하고시퍼요</h2>
<table border="">
	<tr style="background-color: #d6d6d6;">
		<th>&emsp;이름&emsp;</th>
		<th>&emsp;국어&emsp;</th>
		<th>&emsp;영어&emsp;</th>
		<th>&emsp;수학&emsp;</th>
		<th>&emsp;사회&emsp;</th>
		<th>&emsp;과학&emsp;</th>
		<th>&emsp;총점&emsp;</th>
		<th>&emsp;평균&emsp;</th>
		<th>&emsp;등급&emsp;</th>
		<th>&emsp;등수&emsp;</th>
	</tr>
	
	 <% for(int r=1; r<=per.length; r++){  /* rank(순위) 1번부터 출력하기 위해서 초기값 r=1로 설정 */
			for(int i=0; i<per.length; i++){
				if(r == exam[i].getRank()){ %>  <!-- for문 돌리고 getRank()로 등수를 불러와서 r과 같다면 tr,td 출력 -->
					<tr align="center">
						<td><%=exam[i].getName() %></td>
						<td><%=exam[i].getJum()[0] %></td>
						<td><%=exam[i].getJum()[1] %></td>
						<td><%=exam[i].getJum()[2] %></td>
						<td><%=exam[i].getJum()[3] %></td>
						<td><%=exam[i].getJum()[4] %></td>
						<td style="color: blue; font-weight: bold;"><%=exam[i].getTot() %></td>
						<td style="background-color: #006cb7; color: #fff; font-weight: bold;"><%=exam[i].getAvg2() %></td>
						<td style="background-color: #006cb7; color: #fff; font-weight: bold;"><%=exam[i].getGrade()%></td>
						<td style="background-color: #006cb7; color: #fff; font-weight: bold;"><%=exam[i].getRank()%></td>
					</tr>
	<%}}}%>
	
</table>
</body>
</html>