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
String str=request.getParameter("input");
int input=Integer.parseInt(str);
str=request.getParameter("answer");
int answer=Integer.parseInt(str);
if(input<answer){
	%>업<a href="add.jsp?answer=<%=answer %>&play=gamePlaying">뒤로가기</a>
	<% 
}
else if(input==answer){
	%>
	정답 <a href="index1.jsp">다시하기</a>
	<% 
}
else if(input>answer){
	%>다운<a href="add.jsp?answer=<%=answer %>&play=gamePlaying">뒤로가기</a>
	<% 
}
%>
</form>



</body>
</html>