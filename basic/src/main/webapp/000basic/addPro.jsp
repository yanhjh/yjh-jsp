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
	%>��<a href="add.jsp?answer=<%=answer %>&play=gamePlaying">�ڷΰ���</a>
	<% 
}
else if(input==answer){
	%>
	���� <a href="index1.jsp">�ٽ��ϱ�</a>
	<% 
}
else if(input>answer){
	%>�ٿ�<a href="add.jsp?answer=<%=answer %>&play=gamePlaying">�ڷΰ���</a>
	<% 
}
%>
</form>



</body>
</html>