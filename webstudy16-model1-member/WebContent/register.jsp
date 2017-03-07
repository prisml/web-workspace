<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>
<script type="text/javascript">
function openPopup() {
	id=document.regiForm.id.value;
	if(id==""){
		alert("아이디를 입력하세요");
		return false;
	}
	open("idcheck.jsp?id="+id,"mypopup","width=400,height=200,top=150,left=200");
}
function checkId() {
	if(document.regiForm.confirm.value != document.regiForm.id.value){
		alert("중복을 확인해주세요");
		return false;
	}
}
</script>
</head>
<body>
<form method="post" name="regiForm" action="register_action.jsp" onsubmit="return checkId()">
<input type="hidden" name="confirm">
아이디 : <input type="text" name="id">
<input type="button" value="중복확인" onclick="openPopup()"><br><br>
패스워드 : <input type="password" name="pass"><br><br>
이름 : <input type="text" name="name"><br><br>
주소 : <input type="text" name="addr"><br><br>
<input type="submit" value="가입">
</form>
</body>
</html>