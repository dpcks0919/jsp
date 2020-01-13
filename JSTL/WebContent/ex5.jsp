<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<html>  
<head>  
<title>sql:setDataSource Tag</title>  
</head>  
<body>  
   
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://db4free.net:3306/yechankim?serverTimezone=UTC"  
     user="yechankim"  password="Aa2031607@"/>  
   
 <c:set var="StudentId" value="153"/> 
 <sql:update dataSource="${db}" var="count">
DELETE FROM Students WHERE id = ? <sql:param value="${StudentId}" />
</sql:update>    

 <sql:query dataSource="${db}" var="rs">  
SELECT * from Students;  
</sql:query>  
   
<table border="2" width="100%">  
<tr>  
<th>Student ID</th>  
<th>First Name</th>  
<th>Last Name</th>  
<th>Age</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.id}"/></td>  
<td><c:out value="${table.First_Name}"/></td>  
<td><c:out value="${table.Last_Name}"/></td>  
<td><c:out value="${table.Age}"/></td>  
</tr>  
</c:forEach>  
</table>  
</body>  
</html>  