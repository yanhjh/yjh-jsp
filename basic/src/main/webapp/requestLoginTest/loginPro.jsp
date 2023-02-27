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

String inputId=request.getParameter("inputId");
String inputPw=request.getParameter("inputPw");



session.setAttribute("inputId",inputId);
session.setAttribute("inputPw",inputPw);
if(inputId.equals("joinID")&&inputPw.equals("joinPW")){
	%>
	
	<script>location.href="index.jsp?loginMember="+inputId+"&isLogin="+true</script>
	<% 
	
	
}
%>

</body>
</html>