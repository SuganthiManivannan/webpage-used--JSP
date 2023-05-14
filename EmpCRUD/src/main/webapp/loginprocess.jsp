<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="crud.dao.Logindao"%>  
	<jsp:useBean id="obj" class="crud.bean.Loginbean"> </jsp:useBean>  
	  
	<jsp:setProperty property="*" name="obj"/>  
	  
    <%  
	boolean status=Logindao.validate(obj);  
	if(status){  
	out.println("You are successfully logged in");  
	session.setAttribute("session","TRUE");  
	response.sendRedirect("index.jsp");
	}  
	else  
	{  
	out.println("Sorry, Invalid User name or Password");
	%>  
	<jsp:include page="login.jsp"></jsp:include>  
	<%  
	}  
	%>  

</body>
</html>