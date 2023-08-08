<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PList</title>
</head>
<body>
<h1 align="center">포 켓 몬 3rd generation</h1>
<table border="">
		<tr align="center">
			<td width="50px;">도감번호</td>
			<td width="500px;">포켓몬이름</td>
			<td width="100px;">작성자</td>
			<td width="200px;">작성일</td>
			<td width="50px;">조회수</td>
		</tr>
	<c:forEach var="list" items="${mainData}">
		<tr align="center">
			<td>${list.id }</td>
			<td><a href="PDetail?id=${list.id}">${list.title }</a></td>
			<td>${list.pname }</td>
			<td>${list.reg_date }</td>
			<td>${list.cnt }</td>
		</tr>
		
	</c:forEach>
		<tr>
				<td colspan="5" align="right">
					<a href="BWriteForm">글쓰기</a>
			</td>
		</tr>
</table>
</body>
</html>