<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<%-- JSP 주석 --%>
<% //스크립트릿 
	int num1 = 20;
	int num2 = 10;
	int add = num1 + num2;
	out.print(num1 + " + " + num2 + " = " + add);
%><br>
<%=num1%> + <%=num2%> = <%=add%>
<%--${num1}+${num2}=${add} 넘어온 값만 출력 가능함--%>
</body>
</html>