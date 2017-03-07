<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>step3-radio</title>
<script type="text/javascript">
	function checkForm() {
		var cf = document.menuForm;
		var ck = true;
		for (var i = 0; i < cf.menu.length; i++) {
			if (cf.menu[i].checked)
				ck = false;
		}
		if (ck) {
			alert("메뉴골라");
			return false;
		}
	}
</script>
</head>
<body>
	<form name="menuForm" action="step1-checkbox-action.jsp" method="post"
		onsubmit="return checkForm()">
		<input type="checkbox" name="menu" value="버거킹">버거킹<br> <input
			type="checkbox" name="menu" value="꽃등심">꽃등심<br> <input
			type="checkbox" name="menu" value="떡볶이">떡볶이<br> <input
			type="submit" value="주문">
	</form>
</body>
</html>