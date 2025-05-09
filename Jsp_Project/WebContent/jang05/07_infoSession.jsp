<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie &amp; Session</title>
</head>
<body>
<h3>세션 정보를 얻어오는 케소드를 사용하기</h3>
<%
	String id_str = session.getId();
	long lasttime = session.getLastAccessedTime();
	long createdtime = session.getCreationTime();
	long time_used = (lasttime - createdtime) / 60000;
	int inactive = session.getMaxInactiveInterval() / 60;
	boolean b_new = session.isNew();
%>
[1] 세션 ID는 [<%=session.getId() %>] 입니다.<br><hr>
[2] 당신의 웹 사이트에 머문 시간은 <%=time_used %> 분입니다.<br><hr>
[3] 세션의 유효 시간은 <%=inactive %> 분입니다.<br><hr>
[4] 세션이 새로 만들어졌나요?<br>
<%
	if(b_new)
		out.print("예! 새로운 세션을 만들었습니다");
	else
		out.print("아닌데여!");
%>
</body>
</html>