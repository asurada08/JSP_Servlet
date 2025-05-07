<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "pinksung";
String pwd = "1234";
String name = "성윤정";//id, pwd, name는 db에 들어갈 내용
request.setCharacterEncoding("utf-8");//post 전송 방식 한글처리
if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
	response.sendRedirect("04_main.jsp?name=" + URLEncoder.encode(name,"utf-8"));
	//성공시 메인 페이지로 이동
} else {
	response.sendRedirect("04_loginForm.jsp");
	//실패시 loginForm으로 이동
}
%>