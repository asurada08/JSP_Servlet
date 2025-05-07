<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
자바 코드<hr>
<% if(request.getParameter("id") != null){ %>
== 연산자 사용 결과 : <%=request.getParameter("id")=="qwer1234" %><br>
equals() 사용 결과 : <%=request.getParameter("id").equals("qwer1234") %><br>
<%} else {
	out.print("id를 전달해 주세요");
}
%>
</body>
</html>