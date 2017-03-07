<%@page import="model.ItemVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ItemDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>item list</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
<%		ArrayList<ItemVO> list
			=ItemDAO.getInstance().getAllItemList();		
%>
<table>
<thead>
	<tr>
		<th>NO</th><th>Name</th>
	</tr>
</thead>
<tbody>
<% for(int i=0;i<list.size();i++){  %>
	<tr>
		<td><%=list.get(i).getItemNo() %></td>
		<td>  <a href="detail_item.jsp?no=<%=list.get(i).getItemNo()%>">
		        <%=list.get(i).getName() %>
		        </a>
		</td>
	</tr>	
<%} %>	
</tbody>
</table>
</body>
</html>










