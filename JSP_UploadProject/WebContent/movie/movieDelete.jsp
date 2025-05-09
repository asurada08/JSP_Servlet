<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/movie.css">
</head>
<body>
<div id="wrap" align="center">
<h1>정보삭제</h1>
<form action="movieDelete.do" method="post">
	<table>
		<tr>
			<td>
				<c:choose>
					<c:when test="${empty movie.poster}">
						<img src="upload/noimage_m.gif">
					</c:when>
					<c:otherwise>
						<img src="upload/${movie.poster}">
					</c:otherwise>
				</c:choose>
			</td>
			<td>
				<table>
					<tr>
						<th style="width: 80px">제목</th>
						<td>${movie.title}</td>
					</tr>
					<tr>
						<th>가격</th>
						<td>${movie.price} 원</td>
					</tr>
					<tr>
						<th>감독</th>
						<td>${movie.director}</td>
					</tr>
					<tr>
						<th>주연</th>
						<td>${movie.actor}</td>
					</tr>
					<tr>
						<th>설명</th>
						<td><div style="height:220px; width:100%">${movie.synopsis}</div></td>
					</tr>
					<tr>
						<th>사진</th>
						<td>${movie.poster}</td>
				</table>
			</td>
		</tr>
	</table>
	<br>
	<input type="hidden" name="code" value="${movie.code}">
	<input type="submit" value="삭제">
	<input type="button" value="목록" onclick="location.href='movieList.do'">
</form>
</div>
</body>
</html>