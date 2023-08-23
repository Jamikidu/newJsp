<%@page import="java.util.ArrayList"%>
<%@page import="basic_p.Member"%>
<%@page import="basic_p.Stud"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session/myLoginReg</title>
</head>
<body>
<h1>세션등록</h1>
<%
	ArrayList<Member> marr1 = new ArrayList<>();
	Member mb1 = new Member("aa","난가?","111");
	Member mb2 = new Member("bb","넌가?","222");
	Member mb3 = new Member("cc","누군가?","333");
	Member mb4 = new Member("dd","또난가?","444");
	marr1.add(mb1);
	marr1.add(mb2);
	marr1.add(mb3);
	marr1.add(mb4);
	String msg = "로그인 실패";
	// 진짜 리스트에 넣어서
	for(Member mm : marr1){
		if(request.getParameter("id").equals(mm.getPid()) && request.getParameter("pw").equals(mm.getPw())){
			
			session.setAttribute("id", mm.getPid());
			session.setAttribute("pname", mm.getPname());
			msg = mm.getPname()+"님 로그인 되었습니다.";
			
		}
	}
	/* //테스트용임!! 이거 살리면 id, pw 입력한대로 세션에 저장됨
	Member st1 = new Member("request.getParameter('id')","누군가1","request.getParameter('pw')");
	session.setAttribute("id", request.getParameter("id"));
	session.setAttribute("st1", st1);
	session.setAttribute("pname", st1.getPname()); */

%>
<script type="text/javascript">
	alert("<%=msg %>")
	location.href="myLoginMain.jsp"
</script>
</body>
</html>