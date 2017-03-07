<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp session index</title>
</head>
<body>
<%--  로그인 상태가 아니면 
		로그인 폼을 제공 
		로그인 상태이면
		송중기님 로그인 
 --%>
 <%	//로그인 인증 정보(세션 attribute의 memberVO 존재유무)
 		MemberVO vo=(MemberVO)session.getAttribute("memberVO");
 		if(vo==null){
 %>
 <form action="login_action.jsp" method="post">
 아이디 <input type="text" name="id" required="required"><br>
 패스워드 <input type="password" name="password" required="required"><br>
 <input type="submit" value="로그인">
 </form>
 <%}else{ %>
 		<%=vo.getName() %>님 로그인 상태입니다. <br>
 		<a href="logout.jsp">로그아웃</a>
 <%} %>
</body>
</html>
















