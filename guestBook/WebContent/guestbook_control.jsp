<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  errorPage="guestbook_error.jsp" import="guestbook.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
table{border-collapse:collapse}
td{padding:5px;}

</style>
</head>
<body>
<jsp:useBean id="gb" class="guestbook.GuestBean"/><!--DAO  -->
<jsp:useBean id="guestbook" class="guestbook.GuestBook"/>
<jsp:setProperty name="guestbook" property="*"/>
<%
// 사용자 요청을 구분하기 위한 파라미터를 저장할 변수
String action = request.getParameter("action");
System.out.println("여기는 guestbook_list.jsp 방명록에서 내용 입력시\n" 
		+"edit(수정화면)를 갖고(guestbook_control.jsp).여기로옴..."+action);

//1. 게시물 목록 요청인 경우
if(action.equals("list")) {
	response.sendRedirect("guestbook_list.jsp");
}
//2. 게시물 등록 요청인 경우 
else if(action.equals("insert")) {		
	if(gb.insertDB(guestbook)) {
		response.sendRedirect("guestbook_list.jsp");
	}else
		throw new Exception("DB 입력오류");
}
//3. 게시물 수정화면 요청인 경우 :list에서 내용을 클릭시 비번 맞으면 여기로 옴
else if(action.equals("edit")) {
	GuestBook gbook = gb.getDB(guestbook.getGb_id());
	if(!gbook.getGb_passwd().equals(request.getParameter("upasswd"))) {
		out.println("<script>alert('비밀번호가 틀렸습니다.!!');history.go(-1);</script>");
	}else {
		request.setAttribute("gbook",gbook);
		pageContext.forward("guestbook_edit_form.jsp");
	}
}
//4. 게시물 수정 처리인 경우 : guestbok_edit_form.jsp에서 저장을 눌렀을 때
else if(action.equals("update")) {
	if(gb.updateDB(guestbook)) {
		response.sendRedirect("guestbook_list.jsp");
	}else
		throw new Exception("DB 갱신오류");
}
//5. 게시물 삭체 요청인 경우: guestbok_edit_form.jsp에서 삭제를 눌렀을 때
else if(action.equals("delete")) {
	if(gb.deleteDB(guestbook.getGb_id())) {
		response.sendRedirect("guestbook_list.jsp");
	}else
		throw new Exception("DB 삭제 오류");
	
}else {
	out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
}

%>
</body>
</html>