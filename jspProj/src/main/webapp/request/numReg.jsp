<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numReg</title>
</head>
<body>
<%
	/*String [] noArr = request.getParameterValues("no");
	int even = 0;			//짝수
	int even_count = 0;		//짝수 개수
	int odd = 0;			//홀수
	int odd_count = 0;		//홀수 개수
	int even_avg = 0;		//짝수평균
	int odd_avg = 0;		//홀수평균
	int even_max = 0;		//짝수최대값
	int even_min = 0;		//짝수최소값
	
	for (String n : noArr){
		try {
			int num = Integer.parseInt(n);  //num은 noArr[i] 의 정수변환
			if(num % 2 == 0) {
				 even += num;
				 System.out.println("나는 더한다 짝수:" + num +", "+ even);
			}
		} catch (Exception e) {
			System.out.println("문자 '" + n +"' 는 더할 수 없습니다.");
		}
	}*/
	String [] per = request.getParameterValues("per");
	String [] kor = request.getParameterValues("kor");
	String [] eng = request.getParameterValues("eng");
	String [] meth = request.getParameterValues("meth");
	
	int [] sum = new int[per.length];
	float [] avg = new float[per.length];
	for(int i=0; i<sum.length; i++){
		sum[i] += Integer.parseInt(kor[i])+Integer.parseInt(eng[i])+Integer.parseInt(meth[i]);
		avg[i] += (float)sum[i] / 3;
	};
%>
<h1>numReg</h1>
<%-- no: <%=request.getParameter("no") %><br/>
noArr: <%=Arrays.toString(noArr) %><br/>
짝수의 합: <%=even %><br/> --%>

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
		<td><input type="text" value="<%=meth[i] %>" /></td>
		<td><input type="text" value="<%=sum[i] %>" /></td>
		<td><input type="text" value="<%=avg[i] %>" /></td>
	</tr>
	<% } %>
</table>
</body>
</html>