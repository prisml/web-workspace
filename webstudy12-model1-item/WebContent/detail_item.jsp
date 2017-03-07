<%@page import="model.ItemVO"%>
<%@page import="model.ItemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세부 사항</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
	<%
		ItemDAO dao = ItemDAO.getInstance();
		ItemVO vo = dao.getItemByNo(Integer.parseInt(request.getParameter("no")));
	%>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>상품명</th>
				<th>제조사</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%=vo.getNo()%></td>
				<td><%=vo.getName()%></td>
				<td><%=vo.getMaker()%></td>
				<td><%=vo.getPrice()%></td>
			</tr>
		</tbody>
	</table>
	<a href="index.html">홈으로</a><br>
	<a href="list_item.jsp">상품목록</a>
</body>
</html>