<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page info="composed by yechan" %>
<%@ page buffer="16kb" %>   
<%@ page import="java.util.Date" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

Today is: <%= new Date() %>  

Today is: <%= new java.util.Date() %>  

<%@ include file="header.html" %>  
  
Today is: <%= java.util.Calendar.getInstance().getTime() %>  

<%-- <%@ taglib uri="http://www.javatpoint.com/tags" prefix="mytag" %>   --%>


</body>
</html>