<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<%
	session.invalidate();
%>
<script>
	alert("안녕히 가세요~");
	location.href="10_loginForm.jsp";
</script>
</body>
</html>