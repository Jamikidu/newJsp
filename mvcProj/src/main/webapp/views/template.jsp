<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mainUrl = request.getAttribute("mainPage")+".jsp";
	//String galleryUrl = "gallery/"+request.getAttribute("galleryTitle")+".jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿</title>
</head>
<body>
<table border="">
	<tr>
		<td><jsp:include page="inc/header.jsp" /></td>
	</tr>
	<tr>
		<td><jsp:include page="<%=mainUrl %>" /></td>
	</tr>
	<tr>
		<td><jsp:include page="inc/footer.jsp" /></td>
	</tr>
</table>
</body>
</html>