<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
<form action="13_fruitSelect.jsp">
	<label for = "fruit">과일을 선택하세요</label><br>
	<select id = "fruit" name = "fruit">
		<option value = "1">청사과</option>
		<option value = "2">딸기</option>
		<option value = "3">포도</option>
	</select>
	<input type = "submit" value = "전송">
</form>
</body>
</html>