<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("endnum"));
	int sum = 0;
	String str = "";
	
	for(int i=1;i<=num;i++){
		sum += i;
		if(i < num) {
			str += i + " + ";
		}else {
			str += i + " = ";
		}
	}
	
%>
	<h3>1부터 <%=num %> 까지 자연수 합 구하기</h3>
	<%=str %><%=sum %>
</body>
</html>