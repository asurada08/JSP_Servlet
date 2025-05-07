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
http://localhost:8081/Jsp_project/jang07/05_null.jsp
실행시
null, 공백(없으면)
http://localhost:8081/Jsp_project/jang07/05_null.jsp?id=aaaa
실행시
자바코드 : aaaa
El 식 : aaaa
 --%>
자바 코드 : <%=request.getParameter("id") %><br>
EL 식 : ${param.id}
</body>
</html>