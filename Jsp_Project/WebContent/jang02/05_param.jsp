<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
<script type = "text/javascript" src="../JS/param.js"></script>
</head>
<body>
<form name="frm" method="get" action = "../ParamServlet">
<!-- 아이디, 나이 값 입력하지 않고 전송하면 "" 익셉션 발생 그래서 자바스크립트로 "" 을 처리 필요 -->
아이디 : <input type = "text" name = "id"><br> 
나 &nbsp; 이 : <input type = "text" name = "age"><br>
<input type = "submit" value = "전송" onclick = "return check()">
</form>
</body>
</html>