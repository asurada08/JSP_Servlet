<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
정수형 : ${10 }<br>
실수형 : ${10.1 }<br>
문자열형 : ${"제임스" }<br>
논리형 : ${false }<br>
null : ${null } 공백<br><%--예외 발생하지 않음. 표현식에서는 null값일때는 예외 발생함 --%>
<%int a = 20, b = 10; %>
${a}
${b}
${a+b}<br><%--아무런 값이 출력되면 안되는데 0이 출력됨 --%>
<%=a %><br>
<%=b %><br>
<%=a+b %><br>
</body>
</html>