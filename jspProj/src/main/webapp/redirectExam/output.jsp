<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처리페이지</title>
</head>
<body>
<%
	/* 주민등록번호받기 */
	String name = request.getParameter("name");
	String frontNum = request.getParameter("frontNum");
	String [] str1 = frontNum.split("");
	System.out.println(Arrays.toString(str1));
	int birth = Integer.parseInt("19"+str1[0]+str1[1]);
	System.out.println(birth);
	
	String backNum = request.getParameter("backNum");
	int firstbackNum = Integer.parseInt(backNum.substring(0,1));  /* 주민등록번호 뒷자리 첫번째 숫자 */
	/*String [] str2 = backNum.split("");
	System.out.println(Arrays.toString(str2));*/
	/* =========================================== */
	/* 년도계산하기 */
	SimpleDateFormat yyyy = new SimpleDateFormat("yyyy");
	Date today = new Date();
	String today_yyyy = yyyy.format(today);
	System.out.println(today_yyyy);
	
	System.out.println(backNum.substring(0,1));
	if(firstbackNum >=5 && firstbackNum <9 ){
		response.sendRedirect("foreigner.jsp?frontNum="+frontNum+"&backNum="+backNum+"&name="+name);
	}
	else{
		response.sendRedirect("normal.jsp?frontNum="+frontNum+"&backNum="+backNum+"&name="+name);
	}
%>
<h1>주민번호처리페이지</h1>
<br/>
<h4>이름: <%=request.getParameter("name") %></h4>
<h4>주민등록번호: <%=frontNum %> - <%=backNum %></h4>
</body>
</html>