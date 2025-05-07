<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 삽입 -->
<sql:update dataSource="${db}">
	insert into member values(?,?,?,?,?,?)
	<sql:param value="리처드"/>
	<sql:param value="hong0915"/>
	<sql:param value="1234"/>
	<sql:param value="poter@naver.com"/>
	<sql:param value="010-9999-8888"/>
	<sql:param value="0"/>
</sql:update>
<!-- 검색 -->
<sql:query var="lists" dataSource="${db}">
	select * from member
</sql:query>
<table border="1">
	<c:forEach var="member" items="${lists.rows}">
		<tr>
			<td>${member.name}</td>
			<td>${member.userid}</td>
			<td>${member.pwd}</td>
			<td>${member.email}</td>
			<td>${member.phone}</td>
			<td>${member.admin}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>