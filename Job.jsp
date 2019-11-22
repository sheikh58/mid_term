<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="org.apache.jasper.tagplugins.jstl.core.Catch" %>
<%@ page import="java.io.IOException" %>
<%@ page import="javax.xml.crypto.KeySelectorException" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    String name = (String) session.getAttribute("User_Name");
%>
<%
    if(request.getParameter("buttonName") != null) {
        response.sendRedirect("Login.jsp");
        session.invalidate();
    }
%>
<%
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "job_details";
    String userid = "root";
    String password = "";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
    statement = connection.createStatement();
    String sql = "select * from for_job";
    resultSet = statement.executeQuery(sql);
%>
<script LANGUAGE="JavaScript">
    function button1()
    {
        document.form1.value = "yes";
        form1.submit();
    }
</script>

<html>
<head>
    <title>Job_LISt</title>
</head>
<body>
<nav>
    <ul style="list-style: none ; list-style-type: circle">
        <li>Bse163112</li>
        <li>Muhammad Rehman</li>
        <button name="form1" onclick="button1()">Logout</button>
    </ul>
</nav>
<h1>welcome to the session</h1><%=name%> </br>


    <div id="recent_jobs">
        <h2>Posted jobs by you</h2>
        </br>
        <div>
                <% while(resultSet.next()) {%>
<table>
            <label>Job title</label><tr><td> <%= resultSet.getString("Title")%> </td> </tr>
            <label>Description</label><tr><td> <%= resultSet.getString("Description")%> </td> </tr>
            <label>Type</label><tr><td> <%= resultSet.getString("Type")%> </td> </tr>
            <label>Time</label><tr><td> <%= resultSet.getString("Time")%> </td> </tr></br>
            <label>Posted By</label><tr><td> <%= resultSet.getString("posted_by")%> </td> </tr></br>
</table>
        </div>
        <% } %>
    </div>
<a href="PostJob.jsp">Post a Job</a>

</body>
</html>
