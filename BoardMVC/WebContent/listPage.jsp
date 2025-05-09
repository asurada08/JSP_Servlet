<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${list}
<br><br>
<table border="1">
	<tr>
		<td colspan="5">
			<form method="post" action="search.do">
				<select name="searchName" size="1">
					<option value="author">작성자</option>
					<option value="title">글제목</option>
				</select>
				<input type="text" name="searchValue">
				<input type="submit" value="찾기">
			</form>
		</td>
	</tr>
		<tr>
		<td>번호</td><td>제목</td><td>작성자</td><td>날짜</td><td>조회수</td>
	</tr>
	<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.num}</td>
		<td>
			<c:forEach begin="1" end="${dto.repIndent}">
				<%= "&nbsp;&nbsp; " %>
			</c:forEach>
			<a href="retrieve.do?num=${dto.num}">${dto.title}</a>
		</td>
		<td>${dto.author}</td>
		<td>${dto.writeday}</td>
		<td>${dto.readCnt}</td>
	</tr>
	</c:forEach>
	<!-- page -->
	<tr>
		<td colspan="5"><jsp:include page="page.jsp" flush="true"/></td>
	</tr>
	<!-- page end -->
</table>
<a href="writeui.do">글쓰기</a>
</body>
</html>