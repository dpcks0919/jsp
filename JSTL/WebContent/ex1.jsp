<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<c:out value="${'Welcome to javaTpoint'}"/>  
<c:set var= "Income" scope="session" value ="${4000*4}" />
<p>Before Remove Value is: <c:out value="${Income}" /> </p>
<c:remove var="Income" />
<p>After Remove Value is: <c:out value ="${Income }"/> </p>

<c:catch var ="catchtheException">
	<p> 2/0 is </p>  
   <% int x = 2/0; %>  
</c:catch>
  
<c:if test = "${catchtheException != null }">
<p> The type of exception is: ${catchtheException} <br />
    There is an exception: ${catchtheException.message} </p>
</c:if>

<c:set value = "10" var = "num" > </c:set>
<c:choose>
<c:when test = "${num%2 == 0 }">
<c:out value = "${num} is even number"> </c:out> <p>
</c:when>
<c:otherwise>
<c:out value = "${num } is odd number"> </c:out> <p>
</c:otherwise>
</c:choose>

<c:forEach var ="i" begin = "1" end="3">
 Item <c:out value = "${i}"/> <p>
 </c:forEach>

<c:forTokens items= "abc-dfe-egs" delims="-" var="name">
<c:out value = "${name}" /> <p>
</c:forTokens>

<c:url value = "/ex1.jsp" />

</body>
</html>