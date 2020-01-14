<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="registprocess.jsp">  
<input type="text" name="uname" value="Name..." onclick="this.value=''"/><br/>  
<input type="text" name="uemail"  value="Email ID..." onclick="this.value=''"/><br/>  
<input type="password" name="upass"  value="Password..." onclick="this.value=''"/><br/>  
<input type="submit" value="register"/>  
</form>  
</body>
</html>