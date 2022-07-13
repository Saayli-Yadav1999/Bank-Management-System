<%-- 
    Document   : logout
    Created on : 4 Jan, 2022, 12:00:01 PM
    Author     : Yadav
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  
                
           
            session.invalidate();  
             out.println("<html>");
             out.println("<link rel='stylesheet' href='home.css'");
             out.println("<body>");
             request.getRequestDispatcher("loginform.jsp").include(request, response);  
             out.println("<h2 style=padding-left:400px;'>Successfully Logged out</h2>");
             
             
    
    
    
%>