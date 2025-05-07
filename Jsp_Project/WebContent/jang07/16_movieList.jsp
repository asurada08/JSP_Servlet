<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] movieList = {"매트릭스", "반지의제왕", "해리포터", "액스맨", "어벤져스"};
	pageContext.setAttribute("movieList", movieList);
%>
<ul>
<%--'li' 사용, 첫번째 값에는 style 지정 --%>
<c:forEach var = "movie" items = "${movieList}" varStatus="status">
	<c:choose>
		<c:when test = "${status.first}">
			<li style="font-weight: bold; color: green;">${movie}</li>
		</c:when>
		<c:otherwise>
			<li>${movie}</li>
		</c:otherwise>
	</c:choose>
</c:forEach>
</ul>
<%--',' 를 붙여서 한줄에 출력 마지막은 ',' 생략 --%>
<c:forEach var = "movie" items = "${movieList}" varStatus="status">
	${movie} <c:if test = "${not status.last}">, </c:if>
</c:forEach>
</body>
</html>