<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
</head>
<body>
<form action="test_login.jsp">
	아이디 : <input type="text" name="userid"><br> 
	암 &nbsp; 호 : <input type="password" name="userPwd"><br> 
	<input type="radio" name="loginCheck" value="1" checked="checked">사용자
	<input type="radio" name="loginCheck" value="2">관리자<br> 
	<input type="submit" value="로그인">
</form>
</body>
</html>