<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%=str %> <!-- 전역변수는 어디든 무관하게 사용가능하다 -->
<%!
//선언 : 변수와 메소드를 선언
//멤버변수 선언, 메소드 선언, 한번만 초기화
//선언된 위, 아래 모든곳에서 변수 사용 할 수 있음
	String str = "안녕하세요!";
	int a = 5, b = -5;
	
	public int abs(int n){
		if(n < 0){
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
<%--<%=num %> 선언전에 사용했기 때문에 에러--%>
<% 
	//스클립트릿 : 자바 코드를 기술 (지역변수 부분)
	//지역변수, 매번 초기화, 여러번 실행, 선언된 아래에서만 변수 사용
	int num = 20;
	out.print(str+"<br>");
	out.print(a + "의 절대값 : " + abs(a) + "<br>");
	out.print(b + "의 절대값 : " + abs(b) + "<br>");	
%>
<%=num %><%--지역변수는 선언 이후부터 사용가능 --%>
<%=str %>
<%--<%= %>표현식 : 계산식이나 함수를 호출한 결과를 문자열 형태로 줄력 --%>
</body>
</html>