<%@page import="java.util.ArrayList"%>
<%@page import="basic_p.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과제 로그인 처리</title>
</head>
<body>
	<%
	ArrayList<Member> mmlist = new ArrayList<>();
	Member mem1 = new Member("aaa","장동건","1111");
	Member mem2 = new Member("bbb","장서건","2222");
	Member mem3 = new Member("ccc","장동건","3333");
	Member mem4 = new Member("ddd","장남건","1111");
	Member mem5 = new Member("eee","북두신건","3333");
	
	mmlist.add(mem1);
	mmlist.add(mem2);
	mmlist.add(mem3);
	mmlist.add(mem4);
	mmlist.add(mem5);

	String pid = request.getParameter("pid");
	String pw = request.getParameter("pw");
	
	String msg = "로그인 실패";
	
	
	 for (Member mm : mmlist){
		if(pid.equals(mm.getPid()) && pw.equals(mm.getPw())){
			System.out.println("mm.getPid(): "+mm.getPid()+", mm.getPw(): "+mm.getPw());
			msg = mm.getPname()+"로그인 성공";
			response.addCookie(new Cookie("pid",mm.getPid()));
			response.addCookie(new Cookie("pname",mm.getPname()));
		}
	}
	
%>
<script type="text/javascript">
	alert("<%=msg%>");
	location.href="myLogMain.jsp"
</script>

</body>
</html>