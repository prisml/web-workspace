<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 결과</title>
</head>
<body>
<a href="index.jsp">HOME</a><hr>
<%
MemberVO vo = (MemberVO)session.getAttribute("MemberVO");
%>
<%=vo.getName() %>님 로그인 성공.<br>
<a href="cafe.jsp">카페가기</a>
</body>
</html>