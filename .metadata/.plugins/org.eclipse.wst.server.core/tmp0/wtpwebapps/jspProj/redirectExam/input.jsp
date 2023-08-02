<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주민등록번호</title>
</head>
<body>
<h1>주민등록번호를 등록하세요</h1>
<form action="output.jsp" method="post">
<table border="">
	<tr>
		<td>이 름: <input type="text" name="name" placeholder="이름" size="10"></td>  <!-- size로 input상자 크기 설정 -->
	</tr>
	<tr>
		<td>주민번호: <input type="text" name="frontNum" placeholder="앞자리 6자리" maxlength="6"> - <!-- maxlength로 글자수 제한 -->
				   <input type="text" name="backNum" placeholder="뒷자리 7자리" maxlength="7"></td>
	</tr>
	<tr>
		<td align="center"><button type="submit">제출</button></td>
	</tr>
</table>




</form>
</body>
</html>