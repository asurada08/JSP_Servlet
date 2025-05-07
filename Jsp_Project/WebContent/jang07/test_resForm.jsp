<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>앙케이트</title>
</head>
<body bgcolor="#ffffcc">
<h3>온라인 앙케이트</h3>
<hr>
<form method = "post" action = "../test_res">
	<label for="gender">1.성별</label><br>
	남 <input type="radio" name="gender" value="남" checked="checked">
	여 <input type="radio" name="gender" value="여">
	<br><br>
	<label for="level">2.본사의 제품을 평가한다면?</label><br>
	매우만족 <input type="radio" name="level" value="매우만족" checked="checked"> 
	그저 그렇다 <input type="radio" name="level" value="그저 그렇다">
	불만족스럽다 <input type="radio" name="level" value="불만족스럽다">
	<br><br>
	<label for="search">3. 가장 자주 사용하는 검색엔진은?</label><br>
	네이버 <input type="checkbox" name="search" value="네이버">
	다음 <input type="checkbox" name="search" value="다음">
	네이트 <input type="checkbox" name="search" value="네이트">
	구글 <input type="checkbox" name="search" value="구글">
	<br><br>
	<label for="text">본사에게 하고 싶은 말은?</label><br>
	<textarea name="content" rows="4" cols="55"></textarea><br>
	<input type = "submit" value = "제출">
	<input type = "reset" value = "취소">
</form>
</body>
</html>