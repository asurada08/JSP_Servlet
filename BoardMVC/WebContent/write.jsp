<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 화면</title>
</head>
<body>
<h1>게시판 글쓰기 화면</h1>
<form method="post" action="write.do">
	제목<input type="text" name="title" value=""><br>
	작성자<input type="text" name="author" value=""><br>
	내용<textarea rows="5" name="content"></textarea><br>
	<input type="submit" value="저장">
</form>
<a href="list.do">목록보기</a>
</body>
</html>