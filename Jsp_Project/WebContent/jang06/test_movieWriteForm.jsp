<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movieWriteForm</title>
</head>
<body>
<h3>정보 등록</h3>
<form method = "post" action = "test_movieWrite.jsp">
	<table>
		<tr>
			<td>제목</td>
			<td><input type = "text" name = "mtitle" size = "20"></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input type = "text" name = "mprice" size = "20">원</td>
		</tr>
		<tr>
			<td>감독</td>
			<td><input type = "text" name = "mdirector" size = "20"></td>
		</tr>
		<tr>
			<td>주연</td>
			<td><input type = "text" name = "mactor" size = "20"></td>
		</tr>
		<tr>
			<td>시놉시스</td>
			<td><textarea name = "msynopsis" cols = "30" rows = "20"></textarea></td>
		</tr>
		<tr>
			<td>장르</td>
			<td>
				<select name = "mgenre">
					<option value = "로맨스">로맨스</option>
					<option value = "스릴러">스릴러</option>
					<option value = "액션">액션</option>
					<option value = "코미디">코미디</option>
					<option value = "에니메이션">애니메이션</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><input type = "submit" value = "등록"></td>
			<td><input type = "reset" value = "취소"></td>
		</tr>
	</table>
</form>
</body>
</html>