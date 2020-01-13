<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<c:set var ="String" value = "Welcome to javatpoint" />
<c:if test = "${fn:contains(String,'javatpoint')}">
	<p> fn:contains--> Found javatpoint string </p>
	</c:if>
	
<c:if test= "${fn: contains(String, 'JAVATPOINT')}" >
    <p>fn:contains--> Found JAVATPOINT string </p>
    </c:if>
    
<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">  
   <p>fn:containsIgnoreCase--> Found javatpoint string<p>  
</c:if>  
  
<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">  
   <p>fn:containsIgnoreCase-->  Found JAVATPOINT string<p>  
</c:if>  

<c:if test = "${fn:endsWith(String,'javatpoint')}">
   <p> String ends with javatpoint </p>
   </c:if>
   
<c:set var= "string1" value= "It is first String." />
<c:set var ="string2" value= "It is <xyz>second String. </xyz>" />

<p>With escapeXml() Function:</p>  
<p>string-1 : ${fn:escapeXml(string1)}</p>  
<p>string-2 : ${fn:escapeXml(string2)}</p>  
  
<p>Without escapeXml() Function:</p>  
<p>string-1 : ${string1}</p>  
<p>string-2 : ${string2}</p>  

<p>Index-1: ${fn:indexOf(string1, "first") } </p>
<p>Index-2: ${fn:indexOf(string2, "second") } </p>

<c:set var="str1" value="Welcome    to    JSP           Programming   "/>
<p>String-1 Length is : ${fn:length(str1)} </p>

<c:set var="str2" value = "${fn:trim(str1)}" /> 
<p>String-2 Length is : ${fn:length(str2)} </p>
<p>Final value of String is : ${str2 } </p>

The string starts with "It": ${fn:startsWith(string1,'It') }
<br> The string starts with "The": ${fn:startsWith(string1, "The") }

<c:set var = "string3" value="Welcome-to-JSP-Programming." />
<c:set var= "string4" value= "${fn:split(string3,'-') }" />
<c:set var= "string5" value= "${fn:join(string4,' ') }" />
<p> String-5: ${string5 }  </p>

${fn:substring(string3, 5,17 )}
<br>

${fn:replace(string3, "JSP", "Web") }

</body>
</html>