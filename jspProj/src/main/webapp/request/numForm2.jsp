<%@page import="oops_p.Exam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int cnt = 5;
	if(request.getParameter("cnt") != null){
		cnt = Integer.parseInt(request.getParameter("cnt"));
	}

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numForm</title>
<script type="text/javascript">
	function cntChange(){
		
		qwer.action="?"
		qwer.submit()
	}
</script>
</head>
<body>
<h1>numForm2</h1>
<form action="numReg2.jsp" name="qwer">
	<table border="">
		<tr>
			<td colspan="2" align="right">
			칸수:
				<select name="cnt" id="" onchange="cntChange()">
				<% for(int i=5; i<=30; i+=5){ 
				   String sel ="";
				   
				   if(i == cnt){
					   sel = "selected";
				   }
				%>
					<option <%=sel%>><%=i %></option>
				<% } %>
				</select>
			</td>
			
		</tr>
		<tr>
			<td>이름</td>
			<td>국어</td>
			<td>수학</td>
			<td>영어</td>
		</tr>
		
		 <% for(int i=0;i<cnt;i++){ %>
		 <tr>
			<td><input type="text" name="per" value="사람<%=i+1 %>"/></td>
			<td><input type="text" name="kor" value="<%=(int)(Math.random()*90)+10 %>" /></td>
			<td><input type="text" name="eng" value="<%=(int)(Math.random()*90)+10 %>" /></td>
			<td><input type="text" name="math" value="<%=(int)(Math.random()*90)+10 %>" /></td>
		</tr>
		<% } %>
		<tr>
			<td colspan="4" align="right">
				<input type="submit" value="계산" />
			</td>
		</tr>
	</table>
</form>

</body>
</html>