<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id = "board" class = "com.saeyan.javaveans.BoardBean"/>
<jsp:setProperty name = "board" property = "*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWrite</title>
</head>
<body>
<h3>입력 완료된 정보</h3>
<table>
	<tr>
		<td>작성자 </td>
		<td><jsp:getProperty name = "board" property = "tname"/></td>
	</tr>
	<tr>
		<td>비밀번호 </td>
		<td><jsp:getProperty name = "board" property = "tpass"/></td>
	</tr>
	<tr>
		<td>이메일 </td>
		<td><jsp:getProperty name = "board" property = "temail"/></td>
	</tr>
	<tr>
		<td>글 제목 </td>
		<td><jsp:getProperty name = "board" property = "ttitle"/></td>
	</tr>
	<tr>
		<td>글 내용 </td>
		<td><jsp:getProperty name = "board" property = "tcontent"/></td>
	</tr>
</table>
</body>
</html>