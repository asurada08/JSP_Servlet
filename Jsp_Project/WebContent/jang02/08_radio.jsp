<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
</head>
<body>
<form method = "get" action = "../RadioServlet">
	<label for = "gender"> 성별 : </label>
	<input type = "radio" id = "gender" name = "gender" value = "남자" checked> 남자
	<input type = "radio" id = "gender" name = "gender" value = "여자"> 여자<br><br>
	<label for = "chk+mail"> 메일정보 수신여부 : </label>
	<input type = "radio" id = "chk_mail" name = "chk_mail" value = "yes" checked> 수신
	<input type = "radio" id = "chk_mail" name = "chk_mail" value = "no"> 거부<br><br>
	<label for = "content"> 간단한 가입 인사를 적어주세요~</label><br>
	<textarea id = "content" name = "content" rows = "3" cols = "35"></textarea><br>
	<input type = submit value = "전송">
</form>
<br>
<hr color="salmon" size="3">
<br>
<form method = "post" action = "../RadioServlet">
	<label for = "gender"> 성별 : </label>
	<input type = "radio" id = "gender" name = "gender" value = "남자" checked> 남자
	<input type = "radio" id = "gender" name = "gender" value = "여자"> 여자<br><br>
	<label for = "chk+mail"> 메일정보 수신여부 : </label>
	<input type = "radio" id = "chk_mail" name = "chk_mail" value = "yes" checked> 수신
	<input type = "radio" id = "chk_mail" name = "chk_mail" value = "no"> 거부<br><br>
	<label for = "content"> 간단한 가입 인사를 적어주세요~</label><br>
	<textarea id = "content" name = "content" rows = "3" cols = "35"></textarea><br>
	<input type = submit value = "전송">
</form>
</body>
</html>