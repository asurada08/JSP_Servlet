<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
<c:set var = "msg" value = "Hello"/>
\${msg} = ${msg}<br>
<c:set var = "age"> 30 </c:set>
\${age} = ${age}<hr>

<c:set var = "member" value = "<%=new Jang07.MemberBean() %>"/>
<c:set target = "${member}" property = "name" value = "제임스"/>
<c:set target = "${member}" property = "userid">james123</c:set>
<c:set target = "${member}" property = "nickname">찡찡이</c:set>
<c:set target = "${member}" property = "pwd">qwer123</c:set>
<c:set target = "${member}" property = "email">james123@naver.com</c:set>
<c:set target = "${member}" property = "phone">010-1111-2222</c:set>
\${member} = ${member}<hr>

<c:set var = "add" value = "${10+5}"></c:set>
\#{add} = ${add}<br>
<c:set var = "flag" value = "${10>5}"/>
\${flag} = ${flag}<br>  
</body>
</html>