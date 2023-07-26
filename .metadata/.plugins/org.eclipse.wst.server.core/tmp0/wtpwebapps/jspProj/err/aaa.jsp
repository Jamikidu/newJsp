<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/excep/ex02.jsp" %> <!-- try~catch가 우선순위가 더 높기때문에 에러페이지로 가지않음 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>aaa</title>
</head>
<body>
<h1>aaa 입니다.</h1>
<%
try{
	int a = 10/2;

	out.println("정상 실행 1" + a + "<br/>");
	
	int [] arr = {11, 22, 33 ,44};
	
	out.println("정상 실행 2 " + arr[2] + "<br/>");
	
	a = Integer.parseInt("123a4");
	
	out.println("정상 실행 3 " + a + "<br/>");
	
}catch(ArithmeticException e){
	out.println("수학적 에러 처리: "+e.getMessage());
	
}catch(ArrayIndexOutOfBoundsException e){
	out.println("인덱스 에러 처리: "+e.getMessage());
	
}catch(Exception e){  //첫번째 catch로 올라가면 에러남. 다른 에러의 부모개념이기 때문
	out.println("일반적 에러 처리: "+e.getMessage());
}
%>
</body>
</html>