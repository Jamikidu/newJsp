<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table>
	<tr>
		<td colspan="4" width="900px;">
			<h1><%=request.getAttribute("BListTitle") %></h1>
		</td>
	</tr>
	<tr align="center">
		<td><a href="/newmvcProj/info">회사소개</a></td>
		<td><a href="/newmvcProj/product">제품</a></td>
		<td><a href="/newmvcProj/gallery">갤러리</a></td>
		<td><a href="/newmvcProj/board/BList">게시판</a></td>
	</tr>
</table>