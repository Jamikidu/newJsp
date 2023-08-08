<%@page import="model_p.GalleryDTO"%>
<%@page import="model_p.PageData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	GalleryDTO dto = (GalleryDTO)request.getAttribute("mainData");
%>
<table border="" style=text-align:center;>
	<tr>
		<td width="150px;">id</td><td width="750px"><%=dto.getGid() %></td>
	</tr><tr>
		<td>제목</td><td><%=dto.getGtitle() %></td>
	</tr><tr>
		<td>작성자</td><td><%=dto.getGpname() %></td>
	</tr><tr>
		<td>작성일</td><td><%=dto.getGreg_date() %></td>
	</tr><tr>
		<td>조회수</td><td><%=dto.getGcnt() %></td>
	<%-- <% if(!dto.getGupfile().equals("")) {%>  <!-- 파일이 공란이 아니라면 칸이 출력되게끔 if문 설정 --> --%>
	</tr><tr>
		<td>파일</td><td>
		<%-- <% if(dto.isImg()) {%> --%>
			<img src="/mvcProj/up/<%=dto.getGupfile() %>" width="750px"> 
		<%-- <%} else { %>
			<a href="/mvcProj/noneJsp/FileDown?fname=<%=dto.getUpfile() %>"> <%=dto.getUpfile() %></a>
		<%} %> --%>
		</td>
	<%-- <%} %> --%>
	</tr><tr>
		<td>내용</td><td align="justify"><%=dto.getGcontent() %></td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<a href="GList">목록으로</a>
			<%-- <a href="BDeleteForm?id=<%=dto.getId() %>&page=<%=pd.page%>">삭제</a>
			<a href="BModifyForm?id=<%=dto.getId() %>&page=<%=pd.page%>">수정</a>
			<a href="BReplyForm?id=<%=dto.getId() %>&page=<%=pd.page%>">답변</a> --%>
		</td>
	</tr>
</table>