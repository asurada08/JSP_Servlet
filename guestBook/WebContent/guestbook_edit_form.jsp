<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="guestbook_error.jsp" import="guestbook.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta  charset="utf-8">
<title>방명록:수정화면</title>
<style>
table{border-collapse:collapse}
td{padding:5px;}

</style>
<script >
	// 삭제 확인을 위한 자바스크립트
	function delcheck() {
		// 메시지 창을 통해 YES/NO 확인
		result = confirm("정말로 삭제하시겠습니까 ?");
		if(result == true){
			document.form1.action.value="delete";
			document.form1.submit();
		}
		else
			return;
	}
</script>

</head>

<%	
	GuestBook guestbook = (GuestBook)request.getAttribute("gbook"); 
System.out.println("리스트에서 내용클릭시 비번맞으면 \n"+
		"guestbook_control.jsp?action=edit&gb_id=1&upasswd=1 이런식으로 해서 \n guestbook_edit_form로 보냄...."); %>
%>

<body>
<div align="center">
<H2>방명록:수정화면 </H2>
<HR>
[<a href=guestbook_control.jsp?action=list>게시물목록으로</a>]
<form name="form1" method="post" action="guestbook_control.jsp">
<input type="hidden" name="gb_id" value="<%=guestbook.getGb_id()%>">
<input type="hidden" name="action" value="update">

<table  border="1"><!--cellpadding=5 cellspacing=0  -->
  <tr>
    <td bgcolor="#99CCFF">작 성 자</td>
    <td><input type="text" name="gb_name" size="20" value="<%=guestbook.getGb_name() %>"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">email</td>
    <td><input type="text" name="gb_email" size="20" value="<%=guestbook.getGb_email() %>"></td>
  </tr>
    <tr>
    <td bgcolor="#99CCFF">전화번호</td>
    <td><input type="text" name="gb_tel" size="20" value="<%=guestbook.getGb_tel() %>"></td>
  </tr>
  <tr>
    <td bgcolor="#99CCFF">비밀번호</td>
    <td><input type="password" name="gb_passwd" size="20" value="<%=guestbook.getGb_passwd()%>"></td>
  </tr>
  <tr>
    <td colspan="2"><textarea rows="5" name="gb_contents" cols="40"><%=guestbook.getGb_contents() %></textarea></td>
  </tr>
  <tr>
    <td colspan=2 align=center><input type=submit value="저장"><input type=reset value="취소"><input type="button" value="삭제" onClick="delcheck()"></td>
</tr>
</table>
</form>

</div>
</body>
</html>