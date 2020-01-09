
<html>  
<body>  
<h2>this is index page</h2>  

<jsp:useBean id="obj" class="com.javatpoint.Calculator">  
</jsp:useBean>


<%  
int m=obj.cube(5);  
out.print("cube of 5 is "+m); 
%>  

<h2>this is end page</h2>
</body>  
</html>  