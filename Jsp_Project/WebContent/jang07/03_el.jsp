<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
\${5+2} : ${5+2} <br>
\${5/2} : ${5/2} <br>
<%-- \${5 div 2} : ${5 div 2} <br>--%>
\${5 mod 2} : ${5 mod 2} <br>
\${2 gt 10} : ${2 gt 10} <br>
\${(5 > 2) ? 5 : 2} : ${(5>2) ? 5 : 2} <br>
\${(5 > 2) || (2 < 10)} : ${(5 > 2) || (2 < 10)} <br>
<%
	String input = null;
%>
\${empty input} : ${empty input} <br>
\${input==null} : ${input==null} <br>
<%if(input==null)
	out.print("텅빈 객체(null)입니다");	
%> <br>
</body>
</html>