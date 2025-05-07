<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
<%
	String[] movieList = {"매트릭스", "반지의제왕", "해리포터", "액스맨", "어벤져스"};
	pageContext.setAttribute("movieList", movieList);
%>
<table border = "1" style = "width:100%; text-align:center;">
	<tr>
		<th>index</th> <th>count</th> <th>title</th> <th>first</th> <th>last</th>
	</tr>
	<c:forEach var = "movie" items = "${movieList}" varStatus="status">
	<tr>
	<%--
	varStatus="status"(변수의 상태를 저장할 변수명 지정하는 속성)
	varStatus 속성에는 : status.first / status.last(boolean형), status.index(정수형)
						status.count(정수형) 
	 --%>
		<td>${status.index}</td>
		<td>${status.count}</td>
		<td>${movie}</td><%--변수의 들어있는 값 출력--%>
		<td>${status.first}</td>
		<td>${status.last}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>