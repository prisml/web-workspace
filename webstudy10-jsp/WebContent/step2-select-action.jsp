<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>step2-select.jsp</title>
</head>
<body>
	<%
		String line = request.getParameter("line");
		if (line.equals("")) {
	%>
	호선을 입력하세요
	<%
		} else if (Integer.parseInt(line) <= 4) {
	%>
	코레일
	<%=line%>호선을 선택하셨습니다.
	<%
		} else {
	%>
	도시철도 <%=line%>호선입니다.
	<%
		}
	%>
</body>
</html>