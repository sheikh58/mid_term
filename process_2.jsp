<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%
    String time = "12:13:14";
    int id = (Integer) session.getAttribute("User_Id");
    String title = request.getParameter("title");
    String description =request.getParameter("description");
    String type =request.getParameter("get_type");
    String location =request.getParameter("get_location");
    String name = (String )session.getAttribute("User_Name");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_details", "root", "");
        Statement st=conn.createStatement();
out.print("working");
out.print(type);
out.print(location);
        String query = "INSERT INTO for_job(user_id,Title,Description,Type,Time,posted_by) values (?,?,?,?,?,?)";
        PreparedStatement s1 =conn.prepareStatement(query);
        s1.setInt(1,id);
        s1.setString(2,title);
        s1.setString(3,description);
        s1.setString(4,type);
        s1.setString(5,location);
        s1.setString(6,name);
        int result = s1.executeUpdate();
        if(result == 1) {
            out.println("Data is successfully inserted!");
            response.sendRedirect("Job.jsp");
        }
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>
