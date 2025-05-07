<%@ page import = "com.saeyan.javaveans.MemberBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8"); 
%>

<%
MemberBean member = new MemberBean(); 
member.setName(request.getParameter("name"));
member.setUserid(request.getParameter("userid"));
member.setNickname(request.getParameter("nickname"));
member.setPwd(request.getParameter("pwd"));
member.setEmail(request.getParameter("email"));
member.setPhone(request.getParameter("phone"));
%>

<% out.print(member.toString()); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원의 정보 처리 페이지</title>
</head>
<body>
<h3>입력 완료된 회원정보</h3>
<table>
	<tr>
		<td>이름 </td>
		<td><%=member.getName() %></td>
	</tr>
	<tr>
		<td>아이디 </td>
		<td><%=member.getUserid() %></td>
	</tr>
	<tr>
		<td>별명 </td>
		<td><%=member.getNickname() %></td>
	</tr>
	<tr>
		<td>비밀번호 </td>
		<td><%=member.getPwd() %></td>
	</tr>
	<tr>
		<td>이메일 </td>
		<td><%=member.getEmail() %></td>
	</tr>
	<tr>
		<td>전화번호 </td>
		<td><%=member.getPhone() %></td>
	</tr>
</table>
</body>
</html>