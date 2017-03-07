<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이템 등록</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<script type="text/javascript">
	function checkForm() {
		var name = document.registerForm.name.value;
		var maker = document.registerForm.maker.value;
		var price = document.registerForm.price.value;
		if (name == "" || maker == "" || price == "") {
			alert("값을 입력하세요");
			return false;
		}
		if (isNaN(price)) {
			alert("가격을 숫자로 입력하세요");
			return false;
		}
	}
</script>
</head>
<body>
	<form name="registerForm" action="result.jsp"
		onsubmit="return checkForm()">
		상품명<input type="text" name="name"><br> 제조사<input
			type="text" name="maker"><br> 가격<input type="text"
			name="price"><br> <input type="submit" name="등록">
	</form>
	<a href="index.html">홈으로</a>
	<br>
</body>
</html>