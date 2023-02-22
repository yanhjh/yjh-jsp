<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="add.jsp">
<%
 request.setCharacterEncoding("utf-8");

int input = Integer.parseInt(request.getParameter("num"));
int num1=Integer.parseInt(request.getParameter("num1"));
int num2=Integer.parseInt(request.getParameter("num2"));
int score=Integer.parseInt(request.getParameter("score"));
int gameCount=Integer.parseInt(request.getParameter("gameCount"));
boolean correct=false;

if(input==num1*num2){
	%>정답<% correct=true;
}
else{
	%>
	 오답
	<% correct=false;
}

%>
<a href="add.jsp" value=<%=correct %>>뒤로가기</a>

</form>



</body>
</html>