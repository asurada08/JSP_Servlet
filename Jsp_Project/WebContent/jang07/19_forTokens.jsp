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
<%--"," / "."을 구분자로 사용 문자열로부터 토큰 추출 --%>
<c:forTokens var = "city" items = "서울.인천,대구.부산" delims=",">
	${city}<br>
</c:forTokens>
<hr>
<c:forTokens var = "city" items = "서울.인천,대구.부산" delims=",.">
	${city}<br>
</c:forTokens>
</body>
</html>