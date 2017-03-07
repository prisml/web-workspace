<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HOME</title>
</head>
<body>
	<h3>Model2 회원관리</h3>
	<a href="findMemberById.jsp">아이디로 회원 검색</a>
	<br>
	<%--
	method get
	response - ok or fail
 --%>
	<a href="findMemberByAddress.jsp">주소로 회원 검색</a>
	<br>
	<%--
	method get
	response - ok or fail
 --%>
 	<%
 	MemberVO vo = (MemberVO)session.getAttribute("MemberVO"); 
 	if(vo==null){ %>
	<a href="login.jsp">로그인</a><br>
	<a href="register.jsp">회원가입</a><br>
	<%}else{ %>
	<%=vo.getName()%>님 로그인<br>
	<a href="DispatcherServlet?command=logout">로그아웃</a><br>
	<a href="cafe.jsp">카페가기</a><br>
	<a href="update.jsp">회원정보수정</a><br>
	<%} %>
	
</body>
</html>