<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "qwer1234";
String pwd = "asdf1234";
String name = "제임스";

if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd")) ){
	Cookie ck = new Cookie("username", name);
	response.addCookie(ck);
%>
	<h3>로그인 성공</h3>
	<p><a href = "test_main.jsp">들어가기</a>
<%
} else {
%>
	<h3>로그인 실패</h3>
	<p><a href = "test_loginForm.jsp">되돌아가기</a>
<%
}
%>