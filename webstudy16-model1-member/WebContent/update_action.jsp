<%@page import="model.MemberDAO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결과확인</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String addr= request.getParameter("addr");
	MemberVO vo = new MemberVO(id,pass,name,addr);
	MemberDAO.getInstance().update(id,pass,name,addr);
	session.setAttribute("memberVO", vo);
	%>
	<a href="index.jsp">홈으로</a><hr>
	<%=name %>님의 정보를 수정하였습니다.<br>
	수정정보<br>
	아이디:<%=id %><br>
	패스워드:<%=pass%><br>
	이름:<%=name %><br>
	주소:<%=addr %><br>
</body>
</html>