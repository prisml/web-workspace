<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색결과</title>
</head>
<body>
id검색결과
<%MemberVO vo = (MemberVO)request.getAttribute("result"); %>
<%=vo.getName() %>님 <%=vo.getAddress() %>
</body>
</html>