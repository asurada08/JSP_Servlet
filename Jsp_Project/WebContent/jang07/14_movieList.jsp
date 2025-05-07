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
<c:forEach var = "movie" items = "${movieList}">
	${movie}<br>
</c:forEach>
</body>
</html>