<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for(int i=1; i<100 ;i++){
		if(((10*i)-10)%3 == 0 | i%3 == 0){
			out.println(" 짝</br>");
		}
		
		
		
		
		/* else if(i>10 & i<20 & i%3 == 1){
			out.println(" 짝 </br>");
		}
		else if(i>20 & i<30 & i%3 == 2){
			out.println(" 짝 </br>");
		}
		else if(i>20 & i<30 & i%3 == 2){
			out.println(" 짝 </br>");
		}
		else if(i/3 >= 10 & i/3 <14){
			out.println(" 짝짝 </br>");
		} */
		else{
			out.println(i + "</br>");
		}
	}
%>
</body>
</html>