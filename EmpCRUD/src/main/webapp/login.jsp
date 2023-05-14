<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<!--  
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("unnamed.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
-->

<body background="emppage.jpg">

<div align="center">
 <h1>Employee Login Form</h1>
		  
  <form action="<%="loginprocess.jsp"%>" method="post">
  
     <table style="with: 100%">
		    <tr>
		     <td>UserName</td>
		     <td><input type="text" name="username" /></td>
		    </tr>
		    
		    <tr>
		     <td>Password</td>
		     <td><input type="password" name="password" /></td>
		    </tr>
		
	  </table>
		   <input type="submit" value="Submit" />
  </form>
  
	<p style="font-family: calibri; color: red; font-size: 20px" >	 
	*** Note: The password should be your Date of Birth without 
	using any special characters [ .(dot) or /(slash) ]***</p>
	
 </div>
 
</body>
</html>