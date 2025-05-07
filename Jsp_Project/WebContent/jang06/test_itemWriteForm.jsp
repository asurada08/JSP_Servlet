<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>itemWriteForm</title>
</head>
<body>
<h3>정보 입력 폼</h3>
<form method = "post" action = "test_itemWrite.jsp">
	<table>
		<tr>
			<td>상품명</td>
			<td><input type = "text" name = "iname" size = "20"></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input type = "text" name = "iprice" size = "20"></td>
		</tr>
		<tr>
			<td>설명</td>
			<td><textarea name = "idescription" cols = "20" rows = "10"></textarea></td>
		</tr>
		<tr>
			<td><input type = "submit" value = "등록"></td>
			<td><input type = "reset" value ="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>