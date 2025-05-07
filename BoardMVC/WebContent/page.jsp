<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.entity.PageTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	PageTO to = (PageTO)request.getAttribute("page");
	int curPage = to.getCurPage();//현제 페이지 번호
	int perPage = to.getPerPage();//페이지당 보여줄 레코드 개수
	
	int totalCount = to.getTotalCount();//종 레코드 수
	int totalPage = totalCount/perPage;//총 페이지 수
	
	System.out.println("curPage : " + curPage);
	System.out.println("perPage : " + perPage);//5
	System.out.println("totalCount : " + totalCount);//16
	
	//16 % 5 --> 3 : 몫, 1: 나머지
	if (totalCount % perPage != 0) totalPage++;//페이지 하나씩 증가
	System.out.println("totalPage : " + totalPage);//4
	
	for(int i = 1; i <= totalPage; i++){
		if (curPage == i){
			out.print("<font size=10 color='red'>" + i + "</font>");
		} else {
			out.print("<a href='list.do?curPage=" + i + "'>" + i + "</a>&nbsp;");
		}
	}
%>
</body>
</html>