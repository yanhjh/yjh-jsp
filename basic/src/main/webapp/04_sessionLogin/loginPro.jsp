
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 request.setCharacterEncoding("utf-8");

 String id = request.getParameter("id");
 String pw = request.getParameter("pw");
 String joinId = (String)session.getAttribute("joinId");
 String joinPw = (String)session.getAttribute("joinPw");
 String msg ="";
 boolean check = false;
 if(joinId.equals(id) && joinPw.equals(pw)){
	msg="로그인 성공";
	check = true;
	 
 }else{
	 msg ="로그인 실패";
 }

 System.out.println(msg);

 if(check){
	 // 자바에서 바로 다음 페이지로 이동 
	 response.sendRedirect("index.jsp");
 }else{
	 response.sendRedirect("join.jsp");
 }
 
 
%>





</body>
</html>