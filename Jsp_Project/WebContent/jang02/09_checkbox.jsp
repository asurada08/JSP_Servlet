<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
</head>
<body>
<form method = "get" action = "../CheckboxServlet">
	<input type = "checkbox" name = "item" value = "신발"> 신발
	<input type = "checkbox" name = "item" value = "가방"> 가방
	<input type = "checkbox" name = "item" value = "벨트"> 벨트<br>
	<input type = "checkbox" name = "item" value = "모자"> 모자
	<input type = "checkbox" name = "item" value = "시계"> 시계
	<input type = "checkbox" name = "item" value = "쥬얼리"> 쥬얼리<br>
	<input type = "submit" value = "전송">
</form>
<br>
<hr color="salmon" size="3">
<br>
<form method = "post" action = "../CheckboxServlet">
	<input type = "checkbox" name = "item" value = "신발"> 신발
	<input type = "checkbox" name = "item" value = "가방"> 가방
	<input type = "checkbox" name = "item" value = "벨트"> 벨트<br>
	<input type = "checkbox" name = "item" value = "모자"> 모자
	<input type = "checkbox" name = "item" value = "시계"> 시계
	<input type = "checkbox" name = "item" value = "쥬얼리"> 쥬얼리<br>
	<input type = "submit" value = "전송">
</form>
</body>
</html>