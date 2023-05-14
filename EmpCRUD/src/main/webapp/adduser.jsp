<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Add User</title>
</head>
<body>


<%@page import="crud.dao.UserDao"%>  
<jsp:useBean id="user" class="crud.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="user"/>  
  
<%  
int i=UserDao.save(user);  
if(i>0){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  





</body>
</html>