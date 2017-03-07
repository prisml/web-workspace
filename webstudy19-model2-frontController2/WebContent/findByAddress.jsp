<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>findByAddress form</title>
</head>
<body>
<%--		DispatcherServlet -- controller
									|
								FindByAddressController
								
 --%>
<form action="DispatcherServlet">
<input type="hidden" name="command" value="address">
주소<input type="text" name="addr">
<input type="submit" value="검색">
</form>
</body>
</html>