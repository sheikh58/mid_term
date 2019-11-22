<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div id="container">
    <form action="Authorize.jsp" method="post">
        <label>User_Name</label>
        <input type="name" size="15" name="Name" required>
        </br>
        <label>Password</label>
        <input type="password" name="password" required>
        </br>
        <input type = "submit" value="submit">
    </form>
</div>
<lable>New User</lable> <a href="Registry.jsp" value="click">Click here</a>
</body>
</html>
