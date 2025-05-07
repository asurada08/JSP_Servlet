<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
<%--
실행 : http://localhost:8081/jang07/05_old.jsp?id=qwer1234
== 연산자 사용 결과 : false
equals() 사용 결과 : true
 --%>
자바 코드 <br>
== 연산자 사용 결과 : <%=request.getParameter("id")=="qwer1234" %><br>
equals() 사용 결과 : <%=request.getParameter("id").equals("qwer1234") %><br>
<hr>
El 식(==연산자 사용 결과) :${param.id=="qwer1234"}<br>
</body>
</html>