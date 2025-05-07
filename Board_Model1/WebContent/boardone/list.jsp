<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="boardone.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ include file="view/color.jsp" %>
<%
	int pageSize = 5;//한 페이지에 게시물 수
%>
<%! SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD HH:mm"); %>
<%
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null){
		pageNum = "1";//초기상태
	}
	//현재 페이지 = 사용자가 선택한 페이지번호
	int currentPage = Integer.parseInt(pageNum);
	//시작 페이지 = (현재페이지-1) * 한 페이지당 게시물 수 +1(무조건 1부터)
	int startRow = (currentPage - 1) * pageSize + 1;//시작행
	//끝페이지 = 현재페이지 * 한 페이지당 게시물 수
	int endRow = currentPage * pageSize;//끝행 예)10=1*10, 20=2*10
	int count = 0;//전체 게시글수
	int number = 0;//나머지 페이지수
	
	List<BoardVO> articleList = null;
	BoardDAO dbPro = BoardDAO.getInstance();
	
	count = dbPro.getArticleCount();//전체글수
	System.out.print("count : "+count);
	if (count > 0) {
		articleList = dbPro.getArticles(startRow, endRow);
		System.out.print("articleList : " + articleList);
	} // 35-(1-1)*10
	number = count - (currentPage - 1) * pageSize;//문번호
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<style>
	span{color:red; font-size: 20px;}
	div#box{margin: 0 auto; width: 800px; text-align: center;}
</style>
</head>
<body bgcolor="<%=bodyback_c%>">
<div id="box">
	<b>글목록(전체 글 : <%=count%>) number=<%=number%></b>
	<table width="700">
		<tr>
			<td align="right" bgcolor="<%=value_c%>">
				<a href="writeForm.jsp">글쓰기</a>
			</td>
		</tr>
	</table>
<%
	if (count == 0) {
%> 
<table width="700" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center">게시판에 저장된 글이 없습니다.</td>
	</tr>
</table>
<%
	} else {
%>
<table width="700" border="1" cellpadding="0" cellspacing="0">
	<tr height="30" bgcolor="<%=value_c%>">
		<td align="center" width="50">번호</td>
		<td align="center" width="250">제목</td>
		<td align="center" width="100">작성자</td>
		<td align="center" width="150">작성일</td>
		<td align="center" width="50">조회</td>
		<td align="center" width="100">IP</td>
	</tr>
<%
	for(int i = 0; i < articleList.size(); i++){
		BoardVO article = (BoardVO) articleList.get(i);
%>
	<tr height="30">
		<td align="center" width="50"><%=number-- %></td>
		<td width="250">
<%
	int wid = 0;
	if (article.getDepth() > 0) {
		wid = 5 * (article.getDepth());
%>
	<img src="images/level.gif" width="<%=wid%>" height="16">
	<img src="images/re.gif">
<% } else { %>
		<img src="images/level.gif" width="<%=wid%>" height="16">
<% }//if end %>
	<a href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
		<%=article.getSubject()%></a>
<%
	if (article.getReadcount() >= 5){//조회수 20 이상일때	
%>	
	<img src="images/hot.gif" border="0" height="16">
<% }//if end %>
		</td>
		<td align="center" width="100">
			<a href="mailto:<%=article.getEmail()%>"><%=article.getWriter()%></a></td>
		<td align="center" width="150"><%=sdf.format(article.getRegdate())%></td>
		<td align="center" width="50"><%=article.getReadcount()%></td>
		<td align="center" width="100"><%=article.getIp()%></td>
	</tr>
	<% }//for end%>
</table>
<%}//if(count==0) {} if문 %>
<%
	if (count > 0) {
		int pageblock = 3;//페이지 묶음
		// 1=15%10+1
		int imsi = count % pageSize == 0 ? 0 : 1;
		// 2=15/10+1
		int pageCount = count / pageSize + imsi;
		// 1=((1-1)/5)*5+1
		int startPage = (int)((currentPage-1) / pageblock) * pageblock + 1;
		//5=1+5-1
		int endPage = startPage + pageblock -1;
		
		if (endPage > pageCount){
			endPage = pageCount;
		}
		if (startPage > pageblock) {
%>
			<a href="list.jsp?pageNum=<%=startPage - pageblock%>">
			<span><%=startPage + "," + pageblock%> = <%=startPage - pageblock%></span>
			[이전]</a>
<%
		}//if startPage
		
		for (int i = startPage; i <= endPage; i++) {
%>
			<a href="list.jsp?pageNum=<%=i%>">[<%=i%>] </a>
<%
		}//for end
		if (endPage < pageCount) {
%>
			<a href="list.jsp?pageNum=<%=startPage + pageblock%>">[다음]
			<span><%=startPage + "," + pageblock%> =  <%=startPage + pageblock%></span></a>
<%
		}//if endPage end
	}//if count문 end
%>
</div>
</body>
</html>