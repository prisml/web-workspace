<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update</title>
</head>
<body>
	<% MemberVO vo = (MemberVO)session.getAttribute("memberVO"); %>
	<a href="index.jsp">홈으로</a><hr>
	<form action="update_action.jsp" method="post">
		아이디:<input type="text" name="id" value="<%=vo.getId() %>" readonly="readonly"><br>
		패스워드:<input type="text" name="pass" value="<%=vo.getPassword() %>"><br>
		이름:<input type="text" name="name" value="<%=vo.getName() %>"><br>
		주소:<input type="text" name="addr" value="<%=vo.getAddress() %>"><br>
		<input type="submit" value="수정">
	</form>
</body>
</html>