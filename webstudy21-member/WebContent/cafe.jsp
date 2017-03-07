<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CAFE</title>
</head>
<body>
<a href="index.jsp">HOME</a><hr>
<%
MemberVO vo = (MemberVO)session.getAttribute("MemberVO");
%>
<%=vo.getAddress()%>에 사는 <%=vo.getName() %>님 환영합니다.<br>
<a href="DispatcherServlet?command=logout">로그아웃</a>
</body>
</html>