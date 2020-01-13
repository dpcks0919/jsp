<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
  
<html>  
<head>  
 <title>XML Tags</title>  
</head>  
<body>  

<c:set var="xmltext">  
<books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>Brad Bird</author>  
  <price>2000</price>  
</book>  
</books>  
</c:set>  
  
<x:parse xml="${xmltext}" var="output"/>  
<x:choose>  
   <x:when select="$output//book/author = 'Chetan bhagat'">  
      Book is written by Chetan bhagat  
   </x:when>  
   <x:when select="$output//book/author = 'Brad Bird'">  
      Book is written by Brad Bird  
   </x:when>  
   <x:otherwise>  
      The author is unknown...  
   </x:otherwise>  
</x:choose> 

<h2>Books Info:</h2>  
<c:import var="bookInfo" url="novels.xml"/>  
  
<x:parse xml="${bookInfo}" var="output"/>  
<p>First Book title: <x:out select="$output/books/book[1]/name" /></p>  
<p>First Book price: <x:out select="$output/books/book[1]/price" /></p>  
<p>Second Book title: <x:out select="$output/books/book[2]/name" /></p>  
<p>Second Book price: <x:out select="$output/books/book[2]/price" /></p>  
  

<h2>Vegetable Information:</h2>  
<c:set var="vegetable">  
<vegetables>  
    <vegetable>  
      <name>onion</name>  
      <price>40/kg</price>  
    </vegetable>  
 <vegetable>  
      <name>Potato</name>  
      <price>30</price>  
    </vegetable>  
 <vegetable>  
      <name>Tomato</name>  
      <price>90/kg</price>  
    </vegetable>  
</vegetables>  
</c:set>  
<x:parse xml="${vegetable}" var="output"/>  
<b>Name of the vegetable is</b>:  
<x:out select="$output/vegetables/vegetable[1]/name" /><br>  
<b>Price of the Potato is</b>:  
<x:out select="$output/vegetables/vegetable[2]/price" />  

<x:parse xml="${vegetable}" var="output"/>  
<x:if select="$output/vegetables/vegetable/price < 100">  
  <br> Vegetables prices are very low.  
</x:if>  
</body>  
</html>  