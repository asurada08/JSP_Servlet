<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<% //스크립트릿 : 자바명령어를 정의, 지역변수, 선언된 아래에서만 사용가능
//service() 메소드에 해당, 무한반복
	int count = 0;
	out.print("count : ");
	out.println(++count);
%>
</body>
</html>