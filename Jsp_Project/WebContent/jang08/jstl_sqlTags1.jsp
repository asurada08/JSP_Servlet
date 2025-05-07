<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{border-collapse: collapse;}
</style>
</head>
<body>
<h3>SQL Tags1</h3>
<sql:setDataSource url="jdbc:oracle:thin:@localhost:1521:XE" driver="oracle.jdbc.driver.OracleDriver" user="scotte" password="tiger" var="db" scope="application"/>
<sql:query var="lists" dataSource="${db}">
	select * from member
</sql:query>
<c:forEach var="member" items="${lists.rows}">
	${member}
</c:forEach>
<hr>
<h3>SQL Tags2</h3>
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