<%@page import="oops_p.Exam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	int cnt = 5;  //초기값
	if(request.getParameter("cnt") != null){  //cnt 값이 null이 아니라면
		cnt = Integer.parseInt(request.getParameter("cnt"));
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numForm3</title>
<script type="text/javascript">
	function cntChange(){   <%-- 밑에 alert에 newcnt 대신 <%=cnt %> 로 했을시 새로 선택한 cnt 값이 아닌 과거의 cnt값으로 출력되는 문제 발생 --%>
		var changedcnt = document.getElementById("cnt");  /* 그래서 현재 cnt값을 재선언하기 위해 select 태그의 id="cnt"를 가져옴 */
		var newcnt = changedcnt.value;  /* 가져온 cnt를 newcnt로 재선언 */
		if(changedcnt.value == "직접입력"){
			var writedcnt = parseInt(prompt("사람수를 입력해주세요."));
			
			if(isNaN(writedcnt) || writedcnt == null){
				alert("잘못된 입력입니다.");
				return;
			}
			newcnt = writedcnt;
			changedcnt.value = writedcnt;
		}
		
		qwer.action="?";  /* jsp주소로 넘겨주지않고 cnt값만 변경하고 새로고침하기위해 action값 초기화 후 submit()  */
		qwer.submit();
		alert("인원수를 "+ newcnt +"로 변경합니다."); /* 변경완료 알림창 생성 */
	}
	
</script>

</head>
<body>
<h1>numForm3</h1>
<h3>과목의 값을 전송하여 총점,평균,등급,등수를 계산하고 정렬해보자!!</h3>
<form action="numReg3.jsp" name="qwer">  <!-- action통해서 numReg3.jsp 로 내용을 보냄 -->
	<table border="">
		<tr>
			<td colspan="2" align="right">
			인원수:
				<select name="cnt" id="cnt" onchange="cntChange()">  <!-- onchange():: 변화가 일어났을때 감지함 => cntChange()함수 작동 -->
				<% for(int i=5; i<=30; i+=5){   // i는 5부터 30까지 5씩 증가함
				   String sel ="";  // sel 이라는 문자 선언
				   
				   if(i == cnt){
					   sel = "selected";  // i와 select의 cnt 값이 같다면 옵션태그 속성에 selected가 추가되게함
				   }
				%>  <!-- ?왜 빨간줄 뜨는거지? -->
					<option <%=sel%>><%=i %></option>  <!-- for문을 돌려 option칸을 생성 -->
					
					
				<% } %>
					<option>직접입력</option>
				</select>
			</td>
			
		</tr>
		<tr>
			<td>이름</td>
			<td>국어</td>
			<td>수학</td>
			<td>영어</td>
			<td>사회</td>
			<td>과학</td>
		</tr>
		
		 <% for(int i=0;i<cnt;i++){ %>  <!-- for문을 돌려 cnt수 만큼 사람,과목,점수를 생성 -->
		 <tr>  <!-- form action으로 name의 값이 넘어가고 화면에 출력되는건 value값 -->
			<td><input type="text" name="per" value="사람<%=i+1 %>"/></td>  <!-- 임의의 사람에 넘버링만 붙임 -->
			<td><input type="text" name="kor" value="<%=(int)(Math.random()*50)+50 %>" /></td>  <!-- 전체평균점수가 너무 낮게 나와서 국어 평균 좀 상향 -->
			<td><input type="text" name="eng" value="<%=(int)(Math.random()*80)+20 %>" /></td>  <!-- 나머지는 최소값 20점 -->
			<td><input type="text" name="math" value="<%=(int)(Math.random()*80)+20 %>" /></td>
			<td><input type="text" name="soc" value="<%=(int)(Math.random()*80)+20 %>" /></td>
			<td><input type="text" name="sci" value="<%=(int)(Math.random()*80)+20 %>" /></td>
		</tr>
		<% } %>
		<tr>
			<td colspan="6" align="right">  <!-- 행6개를 1개로 합쳐서 표기 -->
				<input type="submit" value="계산" />
			</td>
		</tr>
	</table>
</form>

</body>
</html>