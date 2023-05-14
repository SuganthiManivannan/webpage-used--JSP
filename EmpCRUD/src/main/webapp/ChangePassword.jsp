<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
   <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>

	<%
String currentPassword = request.getParameter("currentPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");


Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/crud";
con = DriverManager.getConnection(url, "root", "root");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from front where currentPassword= '"+ currentPassword + "'");
if (rs.next()) { 
pass = rs.getString("currentPassword");
} 
if(Newpass.equals(conpass))
{
if (pass.equals(currentPassword)) {
st = con.createStatement();
int i = st.executeUpdate("update fronts set currentPassword='"+ Newpass + "'");
out.println("Password changed successfully");
st.close();
con.close();
} else {
out.println("Old Password doesn't match");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
}
} catch (Exception e) {
out.println(e);
}
%>

</body>
</html>