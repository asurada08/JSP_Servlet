<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! //브라우저 종료/서버 deploy 되면 초기화 됨
	int global_cnt = 0;//새로고침 할 때 마다 증가
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<% //지역변수 : 매번 초기화
	int local_cnt = 0; //새로고침 해도 1
	
	out.print("<br> local_cnt : ");
	out.print(++local_cnt); //지역변수, 실행하면 1 증가함
	//메소드가 호출되면서 새롭게 메모리를 할당을 하면서 
	//0으로 초기화한 후에 1 증가해서 1만 출력됨
	
	out.print("<br> global_cnt : ");
	out.print(++global_cnt); //전역변수, 실행하면 1 증가하고, 새로고침하면 계속 1씩 증가
%>
<%--
pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true); 
--%>
</body>
</html>