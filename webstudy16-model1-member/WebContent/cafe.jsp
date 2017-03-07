<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cafe</title>
</head>
<body>
<%
MemberVO vo = (MemberVO)session.getAttribute("memberVO");
%>
<%=vo.getAddress() %>에사는 <%=vo.getName() %>님 카페입장 환영!
<a href="logout.jsp">로그아웃</a><hr>
<a href="index.jsp">홈으로</a>
</body>
</html>