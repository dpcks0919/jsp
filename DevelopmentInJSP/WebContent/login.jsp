<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="index.jsp" %>  
<hr/>  
  
<h3>Login Form</h3>  
  
 <br/>  
<form action="loginprocess.jsp" method="post">  
Email:<input type="text" name="email"/><br/><br/>  
Password:<input type="password" name="pass"/><br/><br/>  
<input type="submit" value="login"/>"  
</form>  
</body>
</html>