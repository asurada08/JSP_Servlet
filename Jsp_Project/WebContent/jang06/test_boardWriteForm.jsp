<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWriteForm</title>
</head>
<body>
<h3>게시판 글쓰기</h3>
<form method = "post" action = "test_boardWrite.jsp">
	<table>
		<tr>
			<td>작성자</td>
			<td><input type = "text" name = "tname" size = "20"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type = "password" name = "tpass" size = "20"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type = "text" name = "temail" size = "20"></td>
		</tr>
		<tr>
			<td>글 제목</td>
			<td><input type = "text" name = "ttitle" size = "20"></td>
		</tr>
		<tr>
			<td>글 내용</td>
			<td><textarea name = "tcontent" cols = "20" rows = "10"></textarea></td>
		</tr>
		<tr>
		<td><input type = "submit" value = "등록"></td>
		<td><input type = "reset" value = "취소"></td>
		</tr>
	</table>
</form>
</body>
</html>