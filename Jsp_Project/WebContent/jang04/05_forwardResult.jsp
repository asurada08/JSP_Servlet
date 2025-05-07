<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String age = request.getParameter("age");// type = String
	String name = (String)request.getAttribute("name");// type = Object
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body bgcolor=pink>
forward 방식으로 이동된 페이지<br>
<h3>표현식으로 출력하기</h3>
	나이 : <%=age %>
	이름 : <%=name %>
<h3>EL언어로 출력하기</h3>
${param.age} <br> <!-- form에서 넘기거나 , url에서 속성=값 -->
${param.name} , setAttribute() <!-- setAttribute()로 넘긴 자료는 EL로 갖고 올 수 없다 -->
<!-- 
${param.name} == ${param["name"]} //하나의 파라메터값 출력
${paramValues.name[0]} == ${paramValues["name"][0]} //여러개의 파라메터값 중에 0번째값 출력
 -->
</body>
</html>