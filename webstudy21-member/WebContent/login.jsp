<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<form method="post" action="DispatcherServlet">
<input type="hidden" name="command" value="login">
아이디 <input type="text" name="id"><br>
패스워드 <input type="password" name="password"><br>
<input type="submit" value="로그인">
</form>
</body>
</html>