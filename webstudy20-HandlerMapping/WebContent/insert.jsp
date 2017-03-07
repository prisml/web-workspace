<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
</head>
<body>
<%--		insert.jsp -- DispatcherServlet -- InsertController -- MockDAO
								|
								| 재등록방지위해 redirect 
							insert_result.jsp
 --%>
<form method="post" action="DispatcherServlet">
<input type="hidden" name="command" value="insert">
이름 <input type="text" name="name"><br>
주소 <input type="text" name="address"><br>
<input type="submit" value="등록">
</form>
</body>
</html>







