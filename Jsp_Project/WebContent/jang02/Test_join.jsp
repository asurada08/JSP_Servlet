<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form method = "get" action = "../Test_JoinServlet">
		<label for = "name">이름</label>
		<input type = "text" name = "name"><br>
		<label for = "idnum">주민등록번호</label>
		<input type = "text" name = "idnum"> - <input type = "text" name = "idnum2"><br>
		<label for = "userid">아이디</label>
		<input type = "text" name = "userid"><br>
		<label for = "userpwd">비밀번호</label>
		<input type = "password" name = "userpwd"><br>
		<label for = "email">이메일</label>
		<input type = "text" name = "email"> @ <input type = "text" name = "emailaddr">
		<select id = "emailaddr" name = "emailaddr" size = "1">
			<option value = "">선택</option>
			<option value = "naver.com">naver.com</option>
			<option value = "nate.com">nate.com</option>
			<option value = "daum.net">daum.net</option>
			<option value = "hanmail.net">hanmail.net</option>
			<option value = "google.com">google.com</option>
		</select><br>
		<label for = "postnum">우편번호</label>
		<input type = "text" name = "postnum"><br>
		<label for = "addr">주소</label>
		<input type = "text" name = "addr"> <input type = "text" name = "addr"><br>
		<label for = "phonenum">핸드폰번호</label>
		<input type = "text" name = "phonenum"><br>
		<label for = "job">직업</label>
		<select id = "job" name = "job" size = "1">
			<option value = "">선택하세요</option>
			<option value = "학생">학생</option>
			<option value = "컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value = "언론">언론</option>
			<option value = "공무원">공무원</option>
			<option value = "군인">군인</option>
			<option value = "서비스업">서비스업</option>
			<option value = "교육">교육</option>
		</select><br>
		<label for = "chk+mail">메일정보 수신여부</label>
		<input type = "radio" id = "chk_mail" name = "chk_mail" value = "yes" checked> 수신
		<input type = "radio" id = "chk_mail" name = "chk_mail" value = "no"> 거부<br>
		<label for = "interest" style = "float:left;">관심분야</label>
		<input type = "checkbox" name = "interest" value = "생두">생두
		<input type = "checkbox" name = "interest" value = "원두">원두
		<input type = "checkbox" name = "interest" value = "로스팅">로스팅
		<input type = "checkbox" name = "interest" value = "핸드드립">핸드드립
		<input type = "checkbox" name = "interest" value = "에스프레소">에스프레소
		<input type = "checkbox" name = "interest" value = "창업">창업
		<br><br>
		<input type = "submit" value = "회원가입">
		<input type = "submit" value = "취소">	
	</form>
</body>
</html>