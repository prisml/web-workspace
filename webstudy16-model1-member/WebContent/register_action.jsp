<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register_action</title>
</head>
<body>
<%
String id = request.getParameter("id"); 
String pass = request.getParameter("pass"); 
String name = request.getParameter("name"); 
String addr = request.getParameter("addr"); 
MemberDAO.getInstance().register(id, pass, name, addr);
%>
회원정보<br>
ID : <%=id%><br>
비밀번호 : <%=pass%><br>
이름 : <%=name%><br>
주소 : <%=addr%><br>
회원가입완료<br>
<a href="index.jsp">홈으로</a>
</body>
</html>