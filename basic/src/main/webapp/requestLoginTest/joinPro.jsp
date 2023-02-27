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
String joinName=request.getParameter("joinName");
String joinID=request.getParameter("joinID");
String joinPW=request.getParameter("joinPW");

session.setAttribute("joinName",joinName);
session.setAttribute("joinID",joinID);
session.setAttribute("joinPW",joinPW);
%>
<script>
alert("회원가입 완료!");
location.href="login.jsp";
</script>
</body>
</html>