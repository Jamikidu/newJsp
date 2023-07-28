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
	String [] noArr = request.getParameterValues("no");
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
	}
%>
<h1>numReg</h1>
no: <%=request.getParameter("no") %><br/>
noArr: <%=Arrays.toString(noArr) %><br/>
짝수의 합: <%=even %><br/>

</body>
</html>