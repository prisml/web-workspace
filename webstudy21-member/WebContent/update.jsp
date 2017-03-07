<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<h3>회원정보수정</h3><br>
	<%
	MemberVO vo = (MemberVO)session.getAttribute("MemberVO");
	%>
	<form method="post" action="DispatcherServlet">
		<input type="hidden" name="command" value="update">
		아이디 <input type="text" name="id" readonly="readonly" value="<%=vo.getId() %>"><br>
		패스워드 <input type="password" name="password" checked="checked"><br>
		이름 <input type="text" name="name" checked="checked"><br>
		주소 <input type="text" name="address" checked="checked"><br>
		<input type="submit" value="수정">
	</form>
</body>
</html>