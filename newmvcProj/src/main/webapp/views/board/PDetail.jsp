<%@page import="model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	BoardDTO dto = (BoardDTO)request.getAttribute("mainData");
%>
<table border="">
	<tr>
		<td width="200px;">id</td><td width="700px"></td>
	</tr><tr>
		<td>제목</td><td>${mainData.title }</td>
	</tr><tr>
		<td>작성자</td><td>${mainData.pname }</td>
	</tr><tr>
		<td>작성일</td><td>${mainData.reg_date }</td>
	</tr><tr>
		<td>조회수</td><td>${mainData.cnt }</td>
	</tr><tr>
		<td>파일</td>
	</tr><tr>
		<td>내용</td><td>${mainData.content }</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<a href="PList">목록으로</a>
			<a href="PDeleteForm?id=<%=dto.getId() %>">삭제</a>
			<a href="PModifyForm?id=<%=dto.getId() %>">수정</a>
			<a href="PReplyForm?id=<%=dto.getId() %>">답변</a>
		</td>
	</tr>
</table>