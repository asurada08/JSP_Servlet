<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h3>아이디 중복확인</h3>
	<form method = "get" action = "idCheck.do" name = "frm">
		아이디 <input type = "text" name = "userid" value = "${userid}">
		<input type = "submit" value = "중복체크">
	<br>
	<c:if test="${result == 1}">
		<script type = "text/javascript">
			opener.document.frm.userid.value = "";
		</script>
		${userid}는 이미 사용중인 아이디입니다.
	</c:if>
	<c:if test="${result == -1}">
		${userid}는 사용 가능한 아이디입니다.
		<input type = "button" value = "사용" class="cancel" onclick = "idok()">
	</c:if>
</form>
</body>
</html>