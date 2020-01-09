<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! int data= 50; %>
<%= "Value of the variable is. "+ data +"<br>" %>
<%  
String name=request.getParameter("uname");  
out.print("welcome "+name+"<br>");  
out.print(java.util.Calendar.getInstance().getTime()+"<br>");
%> 
</body>
</html>