<%@ page import="javax.swing.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getParameter("name") == session.getAttribute("User_Name") && request.getParameter("password") == session.getAttribute("User_password"));
    {
        response.sendRedirect("Job.jsp");
    }
%>
