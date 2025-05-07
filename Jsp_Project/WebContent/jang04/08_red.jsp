<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body bgcolor="red">
이 파일은 red.jsp 입니다<br>
브라우저에 배경색이 빨간색으로 나타날까요?<br>
노란색으로 나타날까요?<br>
forward 액션 태그가 실행되면 이 페이지의 내용은 출력되지 않습니다<br>
<%-- <jsp:forward page = "08_yellow.jsp">
<jsp:param value = '<%=URLEncoder.encode("abc한글","utf-8")%>' name = "color"/>
<jsp:param value = 'english' name = "color2"/>
</jsp:forward> --%>
<%--<jsp:forward page = "08_yellow.jsp"/>--%>
<%--발송자로 처리--%>
<% 
request.setAttribute("color", "노랑");//한글처리 할 필요 없음(자동 처리)
RequestDispatcher dispatcher = request.getRequestDispatcher("08_yellow.jsp");
dispatcher.forward(request, response);
%>

</body>
</html>
<%-- 
액션태그 : 스크립트릿, 주석, 디렉티브와 함께 JSP 페이지를 이루고 있는 요소
자바 코드를 사용하는 것보단 액션 태그를 사용하는것이 깔끔하고 가독성이 높음
<jsp:forward> : 다른 사이트로 이동할 때 사용 / 페이지의 흐름을 제어할 때 사용
<jsp:include> : 정적 혹은 동적인 자원을 현재 페이지의 내용에 포함 / 페이지 모듈화할 때 사용
<jsp:param> : forward,include,plugin과 같이 사용, 파라미터를 추가할 때 사용
<jsp:usebean> : 빈(bean)을 생성하고 사용하기 위한 환경을 정의하는 액션 태그 / 요즘은 거의 사용안함?
<jsp:setProperty> : 빈에서 속성 값을 할당
<jsp:getProperty> : 빈에서 속성 값을 얻어올때 사용
--%>