<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
Welcome, ${ param.name }  

Value is ${ sessionScope.user }  

Hello, ${cookie.name.value}  
</body>
</html>