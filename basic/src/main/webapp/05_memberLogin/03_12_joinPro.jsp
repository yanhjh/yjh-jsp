<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name =request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
int idx=(int)session.getAttribute("idList.length");
String[]idList=new String[idx];
String[]pwList=new String[idx];
idList=(String[])session.getAttribute("idList");
pwList=(String[])session.getAttribute("pwList");
String msg="";
boolean check =false;
for(int i=0;i<idx;i++){
	if(id.equals(idList[i])){
		if(pw.equals(pwList[i])){
			check=true;
		}
	}
}

%>
<%=check %>

</body>
</html>