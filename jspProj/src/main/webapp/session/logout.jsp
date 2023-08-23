<%@page import="basic_p.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 처리</title>
</head>
<body>
<%
	Member mem = (Member)session.getAttribute("mem");
	session.invalidate();
%>

<script type="text/javascript">
	alert("<%=mem.getPname()%>님 로그아웃되었습니다.")
	location.href="logMain.jsp"
</script>


</body>
</html>