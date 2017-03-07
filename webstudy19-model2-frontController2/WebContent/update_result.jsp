<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update result</title>
</head>
<body>
<%-- forward방식으로 이동되면
request가 유지되므로 nick을 출력할 수 있다 --%>
<%= request.getParameter("nick") %>
닉네임 수정 완료
<%-- forward방식으로 이동되면
Controller에서 request에 attribute정보를 setting하면  --%>
<%=request.getAttribute("info") %>
</body>
</html>