<%@page import="model.MemberVO"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_action.jsp</title>
</head>
<body>
<%-- 전달받은 아이디와 패스워드가
	   ServletContext의 map 정보에 있는 
	   회원정보 아이디 패스워드와 일치하면
	   <a>Home</a> 
	   송중기님 로그인 성공
	   or
	   아이디가 없거나 아이디에 따른 패스워드가
	   일치하지 않으면 
	   로그인 실패 alert 후 index.jsp로 이동 
 --%>
 <%	//ServletContext의 attribute 인 map 객체를 반환받는다    
        @SuppressWarnings("unchecked") //warning을 안보이게 하는 어노테이션
 		HashMap<String,MemberVO> map
 			=(HashMap<String,MemberVO>)application.getAttribute("map");
 		//사용자가 전송한 id와 password를 전달받는다 
 		String id=request.getParameter("id");
 		String password=request.getParameter("password");
 		//id가 존재하는 지 확인 
 		MemberVO vo=map.get(id);
 		boolean flag=false; 		
 		if(vo!=null){ // id가 존재하면 id에 따른 password를 비교한다 
 			if(vo.getPassword().equals(password)){//password가 일치하면
 				flag=true;
 				session.setAttribute("memberVO", vo);
 				%> <a href="index.jsp">Home</a><hr>
 					<%=vo.getName() %>님 로그인 OK 
 <% 				
 			}
 		}
 		if(flag==false){
 %> 			<script type="text/javascript">
 					alert("로그인 실패");
 					location.href="index.jsp";
 				 </script>
 <%	} %>
</body>
</html>























