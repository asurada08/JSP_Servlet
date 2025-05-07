<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "page man");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session man");
	application.setAttribute("name", "application man");
	
	System.out.println("firstPage.jsp");
	System.out.println("하나의 페이지 속성 : " + pageContext.getAttribute("name"));
	System.out.println("하나의 요청 속성 : " + request.getAttribute("name"));
	System.out.println("하나의 세션 속성 : " + session.getAttribute("name"));
	System.out.println("하나의 애플리케이션 속성 : " + application.getAttribute("name"));
	request.getRequestDispatcher("07_secondPage.jsp").forward(request, response);
%>
<!-- 
page 영역 : 하나의 페이지를 처리할 때 사용되는 영역 
/ 해당 페이지 내에서만 사용
request 영역 : 요청을 처리할 때 사용되는 영역 
/ 브라우저가 요청을 할 때마다 새로운 request 내장 객체가 생성되고 
매번 새로운 request 영역 생성
session 영역 : 하나의 브라우저와 관련된 영역
/ 웹 브라우저를 닫기 전까지 페이지를 이동하더라도 
사용자의 정보를 잃지 않고 서버에 보관할 수 있도록 하는 객체
application 영역 : 하나의 웹 애플리케이션과 관련된 영역
/ 웹 애플리케이션에 속한 모든 페이지, 그 페이지에 대한 요청, 세션은 
모두 application 영역에 속함 
 -->