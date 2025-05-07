<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 빈 객체 생성하기(useBean 액션 태그)</title>
</head>
<body>
<%--아래 내용 <%MemberBean member = new MemberBean();%> import와 동일 --%>
<jsp:useBean id="member" class="com.saeyan.javaveans.MemberBean"/>

◎ 자바 빈 객체 생성 후 저장된 정보 출력하기 <br><br>
이름 : <%=member.getName() %><br>
아이디 : <%=member.getUserid() %>
<%--
<jsp:getProperty name="member" property = "name"/>
<jsp:getProperty name="member" property = "userid"/>
 --%>
<hr>

◎ 정보 변경한 후 변경된 정보 출력하기 <br><br>
<%
member.setName("제임스");
//<jsp:setProperty name = "member" property = "name" value = "제임스"/>
member.setUserid("james123");
%>
이름 : <%=member.getName() %><br>
아이디 : <%=member.getUserid() %>
</body>
</html>