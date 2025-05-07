<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="view/color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="script.js"></script>
</head>
<%
	//새글 : num=0
	int num = 0, ref = 1, step = 0, depth = 0;
	try {
		if (request.getParameter("num") != null) {
			System.out.println("여기오니...");
			num = Integer.parseInt(request.getParameter("num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			step = Integer.parseInt(request.getParameter("step"));
			depth = Integer.parseInt(request.getParameter("depth"));
		}
%>
<body bgcolor="<%=bodyback_c%>">
<center><b>글쓰기</b></center>
<br><br>
<form method="post" action="writeProc.jsp" name="writeForm" onsubmit="return writeSave()">
	<table width="600" border="1" cellpadding="0" cellspacing="0" align="center" bgcolor="<%=bodyback_c%>">
		<tr>
			<td align="right" colspan="2" bgcolor="<%=value_c%>">
				<a href="list.jsp">글목록</a>
			</td>
		</tr>
		<tr>
			<td width="70" bgcolor="<%=value_c%>" align="center">이름</td>
			<td width="330">
				<input type="text" size="12" maxlength="12" name="writer"/>
			</td>
		</tr>
		<tr>
			<td width="70" bgcolor="<%=value_c%>" align="center">이메일</td>
			<td width="330">
				<input type="text" size="30" maxlength="30" name="email"/>
			</td>
		</tr>
		<tr>
			<td width="70" bgcolor="<%=value_c%>" align="center">제목</td>
			<td width="330">
				<%if(request.getParameter("num") == null) {%>
				<input type="text" size="50" maxlength="50" name="subject"/>
				<%} else {%>
				<input type="text" size="50" maxlength="50" name="subject" value="[답변]"/>
				<%} %>
			</td>
		</tr>
		<tr>
			<td width="70" bgcolor="<%=value_c%>" align="center">내용</td>
			<td width="330">
				<textarea name="content" rows="13" cols="40"></textarea>
			</td>
		</tr>
		<tr>
			<td width="70" bgcolor="<%=value_c%>" align="center">암호</td>
			<td width="330">
				<input type="password" size="10" maxlength="10" name="pass"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" bgcolor="<%=value_c%>" align="center">
				<input type="submit" value="글쓰기"/>
				<input type="reset" value="다시작성"/>
				<input type="button" value="목록" onclick="window.location='list.jsp'"/>
			</td>
		</tr>
	</table>
	<input type="text" name="num" value="<%=num%>">
	<input type="text" name="ref" value="<%=ref%>">
	<input type="text" name="step" value="<%=step%>">
	<input type="text" name="depth" value="<%=depth%>">
</form>
<%} catch(Exception e) {e.getMessage();}%>
</body>
</html>