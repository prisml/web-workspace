<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 확인</title>
<script type="text/javascript">
function onClose() {
	self.close();
}
</script>
</head>
<body bgcolor="yellow">
	<%=request.getParameter("id")%>는 사용 가능한 아이디 입니다
	<script type="text/javascript">
		opener.document.regiForm.confirm.value='<%=request.getParameter("id")%>';
	</script>
	<br>
	<input type="button" value="확인" onclick="onClose()">
</body>
</html>