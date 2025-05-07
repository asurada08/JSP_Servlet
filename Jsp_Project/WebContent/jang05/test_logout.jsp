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
	Cookie ck = new Cookie("username", "");
	ck.setMaxAge(0);//쿠키 삭제
	response.addCookie(ck);
%>
<script>
	alert("안녕히 가세요~");
	location.href="test_loginForm.jsp";
</script>
</body>
</html>