<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String pageName = request.getParameter("search");
if(pageName.equals("daum")){
	response.sendRedirect("http://wwww."+pageName+".net");
}else {
	response.sendRedirect("http://www."+pageName+".com");
}
%>
</body>
</html>