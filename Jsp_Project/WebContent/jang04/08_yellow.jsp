<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body bgcolor = "yellow">
<%-- <%= URLDecoder.decode(request.getParameter("color"), "utf-8")%>
그냥 출력 되는지 확인해봄 <br>
<%= URLDecoder.decode(request.getParameter("color2"), "utf-8")%>--%>
디코더 하지 않았을 때 <%=request.getParameter("color") %><br>
넘어온 값 : <%=request.getAttribute("color") %> 결과 null이 나옴<br> 
<%--
결과 null 나오는 경우 jsp 액션태그 일때
RequestDispatcher 일때 값이 넘어감?
 --%>
<h3>[forward 액션 태그에 대한 예제]</h3>
<hr size = "3" color = "green">
이 파일은 yellow.jsp 입니다<br>
<hr>
브라우저에 나타나는 URL과 전혀상관없는 파일 입니다
</body>
</html>