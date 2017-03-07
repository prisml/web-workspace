<%@page import="model.MemberDAO"%>
<%@page import="model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>findMemberByAddress_action</title>
</head>
<body>
	<%
		String address = request.getParameter("address");
		ArrayList<MemberVO> list = MemberDAO.getInstance().findMemberByAddress(address);
		if (list.size() != 0) {
	%>
	<table border="1" cellpadding="10">
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getId()%></td>
				<td><%=list.get(i).getName()%></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<br><a href="index.jsp">홈으로</a>
	<%
		} else {
	%>
	<script type="text/javascript">
		alert("<%=address%>	에 사는 회원 없음");
		location.href = "index.jsp";
	</script>
	<%
		}
	%>
</body>
</html>