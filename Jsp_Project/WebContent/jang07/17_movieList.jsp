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
<%--1부터 10까지 출력 --%>
<c:forEach var = "cnt" begin = "1" end = "10" varStatus = "status">
	${cnt} <c:if test = "${not status.last}">,</c:if>
</c:forEach>
<br><br>
<%--cnt에 시작값 끝값 지정해서 출력 --%>
<table border = "1" style = "width:100%; text-align:center;">
	<tr>
		<th>index</th><th>count</th><th>cnt</th>
	</tr>
	<c:forEach var = "cnt" begin = "7" end = "10" varStatus = "status">
		<tr>
			<td>${status.index}</td>
			<td>${status.count}</td>
			<td>${cnt}</td>
		</tr>
	</c:forEach>
</table>
<br><br>
<%--cnt에 step를 사용 2씩 증가하도록 출력 --%>
<table border = "1" style = "width:100%; text-align:center;">
	<tr>
		<th>index</th><th>count</th><th>cnt</th>
	</tr>
	<c:forEach var = "cnt" begin = "1" end = "10" varStatus = "status" step = "2">
		<tr>
			<td>${status.index}</td>
			<td>${status.count}</td>
			<td>${cnt}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>