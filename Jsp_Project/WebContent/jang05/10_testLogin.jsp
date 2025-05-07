<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "qwer1234";
String pwd = "asdf1234";
String name = "제임스";
//id, pwd가 같을 때만 쿠키 생성하고 client에 추가
if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd")) ){
	session.setAttribute("loginUser", name);
	response.sendRedirect("10_main.jsp");
	
} else {
	response.sendRedirect("10_loginForm.jsp");
}
%>