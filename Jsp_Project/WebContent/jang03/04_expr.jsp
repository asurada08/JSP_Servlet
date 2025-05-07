<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String str = "안녕하세요";
	int a = 5, b = -5;
	
	public int abs(int n) {
		if (n < 0) {
			n = -n;
		}
		return n;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<%=str %><br>
<%=a %>의 절대값 : <%=abs(a) %><br>
<%=b %>의 절대값 : <%=abs(b) %><br>
<%-- 위의 표현식을 서블릿 컨테이너가 out.print()로 변환
out.print(str);
...
out.print(a);
out.write("절대값 : ");
out.print(abs(a));
...
 --%>
</body>
</html>