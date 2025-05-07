<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id = "movie" class = "com.saeyan.javaveans.MovieBean"/>
<jsp:setProperty name = "movie" property = "*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movieWrite</title>
</head>
<body>
<h3>입력 완료된 정보</h3>
<table>
		<tr>
			<td>제목</td>
			<td><jsp:getProperty name = "movie" property = "mtitle"/></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><jsp:getProperty name = "movie" property = "mprice"/>원</td>
		</tr>
		<tr>
			<td>감독</td>
			<td><jsp:getProperty name = "movie" property = "mdirector"/></td>
		</tr>
		<tr>
			<td>주연</td>
			<td><jsp:getProperty name = "movie" property = "mactor"/></td>
		</tr>
		<tr>
			<td>시놉시스</td>
			<td><jsp:getProperty name = "movie" property = "msynopsis"/></td>
		</tr>
		<tr>
			<td>장르</td>
			<td><jsp:getProperty name = "movie" property = "mgenre"/></td>
		</tr>
	</table>
</body>
</html>