<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition03</title>
</head>
<body>
	<h3>표현언어로 출력하기</h3>
	<!-- EL언어로 표기 : 간결하게 출력하는 방식, 실행할 때는 주석 지워야함 -->
	${num1}+${num2}=${add}
	
	<h3>표현식으로 출력하기</h3>
	<!-- 표현식으로 출력 -->
	<%
	int num1 = (Integer)request.getAttribute("num1");
	int num2 = (int)request.getAttribute("num2");
	int add = (int)request.getAttribute("add");
	%>
	<%=num1%>+<%=num2%>=<%=add%>
</body>
</html>