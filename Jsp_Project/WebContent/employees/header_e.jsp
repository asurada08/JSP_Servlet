<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td{width: 200px;}
</style>
</head>
<body>
<table border="1">
<c:if test="${empty loginUser}">
	<tr>
		<td></td>
		<td></td>
		<td>로그인</td>
		<td>사원등록<br>(관리자로 로그인 후 사용가능)</td>
		<td>마이페이지<br>(로그인 후 사용가능)</td>
	</tr>
</c:if>
<c:if test="${!empty loginUser}">
	<tr>
		<td>${loginUser.name}님 반갑습니다</td>
		<td>레벨 : ${loginUser.lev}</td>
		<td>로그인</td>
		<td>사원등록</td>
		<td>마이페이지</td>
	</tr>
</c:if>
</table>
</body>
</html>