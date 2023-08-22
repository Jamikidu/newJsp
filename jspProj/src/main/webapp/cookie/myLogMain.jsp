<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과제 로그인 메인</title>
</head>
<body>

<%

	Cookie [] coos = request.getCookies();
	String pid = null, pname = null;
	for(Cookie co : coos){
		if(co.getName().equals("pid")){
			pid = co.getValue();
		}
		if(co.getName().equals("pname")){
			pname = co.getValue();
		}
	}

	if(pid!=null){
%>
<%=pname %> 님 안녕하세요!
<a href="myLogout.jsp">로그아웃</a>
<%}else{ %>
<h1>과 제 로 그 인</h1>
<form action="myLogReg.jsp">
	id<input type="text" name="pid" />
	pw<input type="text" name="pw" />
	<input type="submit" value="로그인" />
</form>
<%} %>

</body>
</html>