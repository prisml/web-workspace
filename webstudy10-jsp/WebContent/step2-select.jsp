<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>step2-select.jsp</title>
<script type="text/javascript">
function checkSelect() {
	if(document.selectForm.line.value==""){
		alert("호선을 선택하세요");
		return false;
	}
}
</script>
</head>
<body>
	<form name="selectForm" onsubmit="return checkSelect()" action="step2-select-action.jsp">
		<select name="line">
		<option value="">--호선--
			</option>
			<%
				for (int i = 1; i < 10; i++) {
			%>
			<option value="<%=i%>"><%=i%>호선
			</option>
			<%
				}
			%>
		</select>
		<input type="submit" value="전송">
	</form>
</body>
</html>