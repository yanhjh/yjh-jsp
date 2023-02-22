<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 메인페이지 </h1>

<%
  Object obj = session.getAttribute("idx");
  System.out.println(obj);
%>

<table border="1">
<% if(obj == null){ %>
    <tr>
        <td><a href="03_11_joinForm.jsp"> 회원가입 </a></td>
        <td><a href="03_21_loginForm.jsp"> 로그인 </a></td>
    </tr>
<%}else{ %>
    <tr>
        <td><a href="03_23_logoutPro.jsp"> 로그아웃 </a></td>
        <td><a href="03_31_updateForm.jsp"> 회원정보수정 </a></td>
        <td><a href="03_41_deleteForm.jsp"> 회원탈퇴 </a></td>
    </tr>
<%} %>
</table>
<% 
String[] sampleId={"qwer","abcd","hello","admin"};
String[] samplePw={"1111","2222","3333","admin"};
String[] sampleName={"이만수","박영희","이수민","관리자"};
String[] sampleGender={"남성","여성","여성","남성"};

session.setAttribute("idList",sampleId ); // Object 타입으로 업케스팅 저장
session.setAttribute("pwList",samplePw );
session.setAttribute("nameList",sampleName );
session.setAttribute("genderList",sampleGender );


%>


</body>
</html> 