<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/movie.css">
<script type="text/javascript" src="script/movie.js"></script>
</head>
<body>
<div id="wrap" align="center">
<h1>정보수정</h1>
<form method="post" enctype="multipart/form-data" name="frm">
	<input type="hidden" name="code" value="${movie.code}">
	<input type="hidden" name="nomakeImg" value="${movie.poster}">
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
						<td>
						<input type="text" name="title" value="${movie.title}" size="80">
						</td>
					</tr>
					<tr>
						<th>가격</th>
						<td><input type="text" name="price" value="${movie.price}"> 원</td>
					</tr>
					<tr>
						<th>감독</th>
						<td>
						<input type="text" name="director" value="${movie.director}">
						</td>
					</tr>
					<tr>
						<th>주연</th>
						<td>
						<input type="text" name="actor" value="${movie.actor}">
						</td>
					</tr>
					<tr>
						<th>설명</th>
						<td>
						<textarea rows="10" cols="80" name="synopsis">${movie.synopsis}</textarea>
						</td>
					</tr>
					<tr>
						<th>사진</th>
						<td><input type="file" name="poster"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<br>
	<input type="submit" value="수정" onclick="return movieCheck()">
	<input type="button" value="목록" onclick="location.href='movieList.do'">
</form>
</div>
</body>
</html>