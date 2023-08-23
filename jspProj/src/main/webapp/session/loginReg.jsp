<%@page import="basic_p.Member"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
<h1>로그인 처리</h1>
<%

	HashMap<String, Member>map = new HashMap<>();
	map.put("aaa", new Member("aaa", "장동건" , "1111"));
	map.put("bbb", new Member("bbb", "장서건", "222"));
	map.put("ccc", new Member("ccc", "장동건", "3333"));
	map.put("ddd", new Member("ddd", "장남건", "1111"));
	map.put("eee", new Member("eee", "북두신건", "3333"));

	
	String pid = request.getParameter("pid");
	String pw = request.getParameter("pw");

	String msg = "로그인 실패";

	if(map.containsKey(pid)){
		
		Member mem = map.get(pid);
		if(mem.getPw().equals(pw)){
	
			msg = mem.getPname()+" 로그인 성공";
			session.setAttribute("mem", mem);
		}
	}

%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="logMain.jsp"
</script>
</body>
</html>