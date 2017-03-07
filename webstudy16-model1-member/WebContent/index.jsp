<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
</head>
<body>
	<a href="findMemberById.jsp">아이디 검색</a>
	<br>
	<a href="findMemberByAddress.jsp">주소 검색</a>
	<br>
	<%
		MemberVO vo = (MemberVO) session.getAttribute("memberVO");
		if (vo == null) {
	%>
	<a href="login.jsp">로그인</a><br>
	<a href="register.jsp">회원가입</a><br>
	<%
		} else {
	%>
	<%=vo.getName()%>님 로그인 상태입니다.
	<br>
	<a href="logout.jsp">로그아웃</a><br>
	<a href="update.jsp">회원정보수정</a><br>
	<a href="cafe.jsp">카페가기</a>
	<%
		}
	%>
</body>
</html>