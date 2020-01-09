<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>  
<body>  
<%   
  
String name=(String)session.getAttribute("user");  
out.print("Hello "+name);  
  
%>  
</body>  
</html>  