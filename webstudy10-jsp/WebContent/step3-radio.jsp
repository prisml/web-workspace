<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>step3-radio</title>
<script type="text/javascript">
function checkForm() {
	if(document.radioForm.friend.value==""){
		alert("친구를 선택하세요");
		return false;
	}
}
</script>
</head>
<body>
<form name="radioForm" action="step3-radio-action.jsp" method="post" onsubmit="return checkForm()">
<input type="radio" name="friend" value="잡스">잡스<br>
<input type="radio" name="friend" value="간디">간디<br>
<input type="radio" name="friend" value="석희">석희<br>
<input type="submit" value="선택">
</form>
</body>
</html>