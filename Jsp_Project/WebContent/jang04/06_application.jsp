<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<%
	String appPath = application.getContextPath();
	//원래 /Jsp_Project가 출력되야지만 path를 지워서 안뜸 
	String filePath = application.getRealPath("06_application.jsp");
	//06_application.jsp의 파일 위치를 보여줌
%>
웹 애플리케이션의 컨텍스트 패스명<br>
<b><%=appPath %></b><hr>
웹 애플리케이션의 파일 경로명<br>
<b><%=filePath %></b><br>
</body>
</html>