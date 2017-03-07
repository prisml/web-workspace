<%@page import="model.MemberDAO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>findMemberById_action</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		MemberVO vo = MemberDAO.getInstance().findMemberById(id);
		if (vo != null) {
	%>
	아이디 :
	<%=vo.getId()%><br> 이름 :
	<%=vo.getName()%><br> 주소 :
	<%=vo.getAddress()%><br>
	<a href="index.jsp">홈으로</a>
	<%
		} else {
	%>
	<script type="text/javascript">
		alert("<%=id%>에 해당하는 회원이 없습니다.");
		location.href = "index.jsp";
	</script>
	<%
		}
	%>
</body>
</html>