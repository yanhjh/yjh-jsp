<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addPro.jsp">
<%
Random rd=new Random();
int num1=0;

%>
<% 
String play=request.getParameter("play");
%>
<h3>숫자를 입력하세요</h3>
<input type="number" value ="inputNum" name="input">
<input type="submit" value="전송">
<% 
if(play.equals("gameStart")){
	num1=rd.nextInt(50)+50;
}
else if(play.equals("gamePlaying")){
	num1=Integer.parseInt(request.getParameter("answer"));
}
%>
<input type="hidden" value="<%=num1%>" name="answer">








</form>

</body>
</html>