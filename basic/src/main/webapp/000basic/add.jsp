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
int num1=rd.nextInt(8)+2;

int num2=rd.nextInt(9)+1;

int score=0;

int gameCount=0;



	
		%>
		
		<div ><h2><%= gameCount+1 %>
	 번째 게임:[  <%= score %>]점</h2>
	 <%=num1 %>x<%=num2 %>=??<br>
	<input type="number" value="number" name="num">
	</div>
	
	
<input type="submit" value="제출하기">
<input type="hidden" value=<%=num1 %> name="num1">
<input type="hidden" value=<%=num2 %> name="num2">
<input type="hidden" value=<%=score %> name="score">
<input type="hidden" value=<%=gameCount %> name="gameCount">
</form>

</body>
</html>