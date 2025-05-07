<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
로드북 홈페이지로 이동
<% //주소변경(O), 갑전달(X), URL?속성=값&속성=값, 제어권(X)
 response.sendRedirect("http://roadbook.co.kr");
%>
</body>
</html>