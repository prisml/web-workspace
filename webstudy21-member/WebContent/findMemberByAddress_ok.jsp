<%@page import="model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색결과</title>
</head>
<body>
	주소검색성공
	<table>
		<tr>
			<td>id</td>
			<td>이름</td>
			<td>주소</td>
		</tr>
		<%
			@SuppressWarnings("unchecked")
			ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
			for (int i = 0; i < list.size(); i++) {
		%>
		<tr>
			<td><%=list.get(i).getId()%></td>
			<td><%=list.get(i).getName()%></td>
			<td><%=list.get(i).getAddress()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>