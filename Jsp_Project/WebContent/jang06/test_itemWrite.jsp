<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id = "item" class = "com.saeyan.javaveans.itemBean"/>
<jsp:setProperty name = "item" property = "*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>itemWrite</title>
</head>
<body>
<h3>입력 완료된 정보</h3>
<table>
	<tr>
		<td>상품명 </td>
		<td><jsp:getProperty name = "item" property = "iname"/></td>
	</tr>
	<tr>
		<td>가격 </td>
		<td><jsp:getProperty name = "item" property = "iprice"/></td>
	</tr>
	<tr>
		<td>설명 </td>
		<td><jsp:getProperty name = "item" property = "idescription"/></td>
	</tr>
</table>
</body>
</html>