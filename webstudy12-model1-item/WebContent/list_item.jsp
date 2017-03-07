<%@page import="java.util.ArrayList"%>
<%@page import="model.ItemVO"%>
<%@page import="model.ItemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이템 리스트</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>no</th>
				<th>상품명</th>
			</tr>
		</thead>
		<tbody>
			<%
				ItemDAO dao = ItemDAO.getInstance();
				ArrayList<ItemVO> list = dao.getList();
				for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getNo()%></td>
				<td><a href="detail_item.jsp?no=<%=list.get(i).getNo()%>"> <%=list.get(i).getName()%>
				</a></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<a href="index.html">홈으로</a>
</body>
</html>