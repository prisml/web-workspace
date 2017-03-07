<%@page import="model.ItemVO"%>
<%@page import="model.ItemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>등록</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
	<%
		String name = request.getParameter("name");
		String maker = request.getParameter("maker");
		int price = Integer.parseInt(request.getParameter("price"));
		ItemDAO dao = ItemDAO.getInstance();
		ItemVO vo = new ItemVO(name, maker, price);
		dao.register(vo);
	%>
	<%=name%>
	상품 등록 완료<br>
	<a href="index.html">홈으로</a><br>
	<a href="register_item.jsp">상품등록</a>
</body>
</html>