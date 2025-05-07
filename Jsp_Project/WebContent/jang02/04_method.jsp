<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
</head>
<body>
<!-- 
@WebServlet("/MethodServlet")
action = "../MethodServlet"

@WebServlet("/jang02/MethodServlet")
action = "MethodServlet"
 -->
<form method = "get" action = "../MethodServlet">
이름:<input type = "text" name = "name"><br><br>
	<input type = "submit" value = "get 방식으로 호출하기">
</form>
<br>
<hr color = "salmon" size= "3">
<br>
<form method = "post" action = "../MethodServlet">
이름:<input type = "text" name = "name"><br><br>
	<input type = "submit" value = "post 방식으로 호출하기">
</form>
</body>
</html>