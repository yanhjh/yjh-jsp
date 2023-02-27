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
boolean isLogin=false;
String loginMember="";

if(isLogin){
	%>
	<%=loginMember %>님 환영합니다
	<a href="logout.jsp">로그아웃</a>
	<% 
	
	
}
else{
	%>
	<a href="join.jsp">회원가입</a>
	<a href="login.jsp">로그인</a>
	<% 
}

%>


</body>
</html>