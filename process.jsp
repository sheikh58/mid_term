<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.sql.Statement" %>
<%
        int id = Integer.parseInt(request.getParameter("id"));
        String user_name = request.getParameter("name");
        String Password =request.getParameter("password");
        String email =request.getParameter("email");

        session.setAttribute("User_Id" ,id);
        session.setAttribute("User_Name" ,user_name);
        session.setAttribute("User_Password",Password);
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_details", "root", "");
            Statement st=conn.createStatement();

            int i=st.executeUpdate("insert into users(user_id,user_name, email, password)values('"+id+"','"+user_name+"','"+email+"','"+Password+"')");
            out.println("Data is successfully inserted!");
            response.sendRedirect("Login.jsp");
        }
        catch(Exception e)
        {
            System.out.print(e);
            e.printStackTrace();
        }
%>
