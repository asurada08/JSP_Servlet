<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scotte";
	String pass = "tiger";
	String sql = "select * from item";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 완료된 정보</title>
</head>
<body>
<h3>입력 완료된 정보</h3>
<table width = "800" border = "1">
<tr>
	<th>상품명</th><th>가격</th><th>상품설명</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, uid, pass);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getString("name")+"</td>");
		out.println("<td>"+rs.getString("price")+"</td>");
		out.println("<td>"+rs.getString("description")+"</td>");
		out.println("</tr>");
	}
} catch (Exception e){
	e.printStackTrace();
}finally {
	try {
		if(rs != null) rs.close();
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>


</table>
</body>
</html>