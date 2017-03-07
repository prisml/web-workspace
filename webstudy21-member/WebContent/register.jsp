<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript">
function openPopup() {
	id=document.regiForm.id.value;
	if(id==""){
		alert("아이디를 입력하세요");
		return false;
	}
	open("DispatcherServlet?command=idcheck&id="+id,"mypopup","width=400,height=200,top=150,left=200");
}
function checkId() {
	if(document.regiForm.flag.value != document.regiForm.id.value){
		alert("중복을 확인해주세요");
		return false;
	}
}
</script>
</head>
<body>
	<h3>회원가입</h3><br>
	<form name="regiForm" method="post" action="DispatcherServlet" onsubmit="return checkId()">
		<input type="hidden" name="flag">
		<input type="hidden" name="command" value="register">
		아이디 <input type="text" name="id" checked="checked">
		<input type="button" name="idcheck" value="중복검사" onclick="openPopup()">
		<br>
		패스워드 <input type="password" name="password" checked="checked"><br>
		이름 <input type="text" name="name" checked="checked"><br>
		주소 <input type="text" name="address" checked="checked"><br>
		<input type="submit" value="가입">
	</form>
</body>
</html>