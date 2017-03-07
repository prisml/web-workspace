<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>findByAddress ok</title>
</head>
<body>
	<%
		@SuppressWarnings("unchecked")
		ArrayList<String> list = (ArrayList<String>) request.getAttribute("list");
		for (int i = 0; i < list.size(); i++) {
	%>
	<%=list.get(i)%><br>
	<%
		}
	%>
</body>
</html>