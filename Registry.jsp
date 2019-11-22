<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Statement" %>

<html>
<head>
    <title>Registry</title>
</head>
<body>
<div id="container">
 <form action="process.jsp" method="post">
     <label>User_Id</label>
     <input type="text" name="id" required>
     </br>
     <label>User_name</label>
     <input type="text" name="name" required>
     </br>
     <label>Password</label>
     <input type="password" name="password" required>
     </br>
     <label>Email</label>
     <input type="email" name="email" required/>
     </br>
     <label>Are you agree with our terms and conditions ....!</label><input type="checkbox" required>
     </br>
     <input type="submit" value="submit">
 </form>
</div>
</body>
</html>
