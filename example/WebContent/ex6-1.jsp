<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>  
<body>  
<%   
  
String name=request.getParameter("uname");  
out.print("Welcome   "+name +"<br>");  
  
session.setAttribute("user",name);  
%>

<a href="ex6-2.jsp"> secondd jsp page </a>  
  
  
</body>  
</html>  