<%@page import="basic_p.Stud"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과제 로그아웃 처리</title>
</head>
<body>
<h1>로그아웃 페이지</h1>

<script type="text/javascript">
	alert("<%=session.getAttribute("pname")%>로그아웃되었습니다.");
	<%session.invalidate();%>
	location.href="myLoginMain.jsp"
</script>
</body>
</html>