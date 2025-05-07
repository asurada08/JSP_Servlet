<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--현재 페이지가 에러 페이지임을 설정 --%>
<%@ page isErrorPage="true" %>
<!--
buffer="none" : autoflush="true" -> 해야 NoError
buffer="none" : autoflush="flase" -> 하면 Error 발생  
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
다음과 같은 에러가 발생하였습니다.
<%= exception.getMessage() %>
</body>
</html>