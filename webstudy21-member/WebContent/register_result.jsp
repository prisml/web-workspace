<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입 결과</title>
</head>
<body>
<a href="index.jsp">HOME</a><hr>
<%MemberVO vo = (MemberVO)session.getAttribute("regi_result"); %>
아이디 <%= vo.getId()%><br>
비밀번호 <%= vo.getPassword()%><br>
이름 <%= vo.getName()%><br>
주소 <%= vo.getAddress()%><br>
<%session.invalidate(); %>
</body>
</html>