<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition02</title>
</head>
<body>
	<%//스크립트릿, jsp 시작인것을 알려줌, java로 처리(컴파일해라)
	int num1 = 20;
	int num2 = 10;
	int add = num1 + num2;
	%>
	<!-- 표현식:출력용 -->
	<%=num1%>+<%=num2%>=<%=add%>
</body>
</html>