
<%@page import="java.util.ArrayList"%>
<%@page import="model_p.GalleryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	ul{padding-left: 0; margin: 0;}
	ul li{list-style:none; border-bottom:1px solid #ccc; padding:0px 0;}
	
</style>
<%  ArrayList<GalleryDTO> dto = (ArrayList<GalleryDTO>)request.getAttribute("mainData"); %>
<table border="">
<%for(int i=0; i<2; i++){%>
<tr align="center">
	<%for(int j=0; j<5; j++) {%>
		<td>
		<ul>
			<li><%=dto.get(5*i+j).getGid()%></li>
			<li><%=dto.get(5*i+j).getGtitle() %></li>
			<li>
				<a href="GDetail?gid=<%=dto.get(5*i+j).getGid()%>">
				<img src="/mvcProj/up/<%=dto.get(5*i+j).getGupfile()%>" width="180px" height="120px">
				</a>
			</li>
			<li><%=dto.get(5*i+j).getGpname() %></li>
			<li><%=dto.get(5*i+j).getGreg_date() %></li>
			<li><%=dto.get(5*i+j).getGcnt() %></li>
		</ul>
		</td>
	<%} %>
</tr>
<%} %>
</table>