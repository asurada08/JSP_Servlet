<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int add (int a, int b) {
	return a+b;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test_01</title>
</head>
<body>
<%
	int x = 20;
	int y = 10;
	out.print(x + " + " + y + " = " + add(x,y));
%>
</body>
</html>