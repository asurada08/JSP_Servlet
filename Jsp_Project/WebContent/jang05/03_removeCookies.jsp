<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie &amp; Session</title>
</head>
<body>
<%
	Cookie cookie = new Cookie("id", "");
	response.addCookie(new Cookie("pwd", ""));
	response.addCookie(new Cookie("age", ""));
	cookie.setMaxAge(0);
	response.addCookie(cookie);
%>
<h3>id 쿠키가 삭제 되었습니다</h3>
<a href="02_getCookies.jsp">
	쿠키 삭제를 확인하려면 클릭하세요
</a>
</body>
</html>