<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isErrorPage="true"%>
<!DOCTYPE HTML>
<html>
<head>
<meta  charset="utf-8">
<title>방명록 에러</title>
<style>
table{border-collapse:collapse}
td{padding:5px;}

</style>

</head>
<body>
<% System.out.println("여기는 guestbook_form.jsp 방명록 작성에서 error나면\n 여기로 옴....");%>
<div align="center">
	<h2>방명록 에러</h2>
	<hr>
	<table  width="400"><!-- cellpadding="5" -->
		<tr width="100%" bgcolor="pink">
			<td>방명록 처리중 에러가 발생 했습니다.<br>
				관리자에게 문의해 주세요..<br>
				빠른시일내 복구하겠습니다.
			<hr>
			에러내용 : <%= exception%>
			<hr>
			</td>
		</tr>
	</table>
</div>
</body>
</html>