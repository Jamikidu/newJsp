<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table>
	<tr>
		<td colspan="4" width="900px;" align="center">
			<h1><%=request.getAttribute("mainTitle") %></h1>
		</td>
	</tr>
	<tr align="center">
		<td><a href="/newmvcProj/info">게임프리크</a></td>
		<td><a href="/newmvcProj/product">포켓몬이란?</a></td>
		<td><a href="/newmvcProj/gallery">포갤러리</a></td>
		<td><a href="/newmvcProj/board/PList">내포켓몬</a></td>
	</tr>
</table>