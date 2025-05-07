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
<!-- 삭제 -->
<sql:update dataSource="${db}">
	delete from member where userid=?
	<sql:param value="hong0915"/>
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