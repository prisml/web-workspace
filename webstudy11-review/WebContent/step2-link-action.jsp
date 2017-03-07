<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="whitegreen">
	<%
		String id = request.getParameter("id");
		if (id != null) {
	%>
	아이디
	<%=id%>
	<br>
	<%
		}
		String name = request.getParameter("name");
		if (name != null) {
	%>
	이름
	<%=name%>
	<%
		}
	%>
	<%
		if (name == null && id == null) {
	%>
	<script type="text/javascript">
		alert("무시기");
		location.href="step2-link.jsp";
	</script>
	<%
		}
	%>
</body>
</html>