<%@page import="model.MemberDAO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login action</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		MemberVO vo = MemberDAO.getInstance().login(id, pass);
		if (vo != null) {
			session.setAttribute("memberVO", vo);
	%>
	<%=vo.getName()%>님 로그인 OK
	<br>
	<a href="cafe.jsp">카페가기</a>
	<hr>
	<a href="index.jsp">홈으로</a>
	<%
		} else {
	%>
	<script type="text/javascript">
		alert("로그인 실패!");
		location.href = "index.jsp";
	</script>
	<%
		}
	%>
</body>
</html>