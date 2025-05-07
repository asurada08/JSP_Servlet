<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
컨텍스트 패스 : <%=request.getContextPath() %><br>
<!--JSP 페이지가 속한 웹 애플리케이션의 컨텍스트 패스를 구함-->
요청방식 : <%=request.getMethod() %><br>
<!--요청 방식이 get 방식인지 post 방식인지 알려줌-->
요청한 URL : <%=request.getRequestURL() %><br>
<!--요청 URL을 구함-->
요청한 URI : <%=request.getRequestURI() %><br>
<!--요청 URL에서 쿼리스트링을 제외한 부분을 구함-->
서버의 이름 : <%=request.getServerName() %><br>
<!--서버의 이름을 구함-->
프로토콜 : <%=request.getProtocol() %><br>
<!--사용중인 프로토콜을 알려줌-->
물리적 주소 : <%=request.getRealPath("Jsp_Project") %>
<!--deprecated 되어 지금은 아래처럼 사용-->
물리적 주소 : <%=request.getSession().getServletContext().getRealPath("Jsp_Project") %><br>
<!-- 요청 관련된 세션 객체를 구함 -->
서블릿 주소 : <%=request.getServletPath() %><br>
<!--서블릿 주소를 구함-->
</body>
</html>