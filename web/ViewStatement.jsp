<%-- 
    Document   : ViewStatement
    Created on : 19 Dec, 2021, 9:56:12 PM
    Author     : Yadav
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.*,java.sql.*,java.util.*"%>
<%@page import="java.io.*"%>
 <%@include file="menu1.html" %> 
<% 
    String accnumber=(String)session.getAttribute("accnumber");
    session.setAttribute("accnumber",accnumber);

     int balance=(Integer)session.getAttribute("balance");
    session.setAttribute("balance",balance);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" href="login1.css">
    </head>
    <body>
       
        <h1 style="color:black;padding-left: 350px; font-size:60px;">BANK OF SOMAIYA</h1>
       <table><tr><td>
        <div style="text-align: left; color:lightgreen; font-size:25px;">
           
        </div>
                </td>
                <td>
                       
		 <div style=" color:lightgreen;  font-size:25px; padding-left:400px;"> 
                     <h2 style="padding-left:50px;color:#FF5800;">Bank Statement</h2>
    <form action="ViewStatement.jsp" method="post">
                     <label><b>Statement :   
        </b>    
        </label> 
        <select name="year"  style="font-size:20px;">
            <option value="current month"> current month </option>
            <option value="all"> All </option>
        </select>  
                           <br><br>
         <input type="submit" value="show" style="font-size:25px;width: 100px;"> <br> </form>
                    

<%
    String year = request.getParameter("year");
   
    Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bank";
               Connection con = DriverManager.getConnection(url,"root","");
        if(year!= null && year.equals("current month")){     
            
            
             PreparedStatement ps10=con.prepareStatement("Select wallet from register where accnumber='"+accnumber+"' ;");
               
                ResultSet rs10=ps10.executeQuery();
                
                
                
                while(rs10.next())
                {
                    out.println("<br><h3 style='color:#FF5800;'>Wallet Balance :" + rs10.getInt("wallet")+"</h3>");
                }
            
               PreparedStatement ps=con.prepareStatement("Select bill_name,date,amount from bills where accno='"+accnumber+"' and  MONTH(date)=MONTH(now()) "
                       + "and YEAR(date)=YEAR(now());");
               
                ResultSet rs=ps.executeQuery();
                
                
             
                
               out.println("<br><table border style='color:black;align:center; margin-left:auto; margin-right:auto;' >");  
             out.println("<tr><td>Action</td><td>Date</td><td>Amount</td></tr>"); 
             while(rs.next() )
             {
              
              out.println("<tr><td>"+rs.getString("bill_name")+"</td>");
              out.println("<td>"+rs.getString("date")+"</td>");
              out.println("<td>"+rs.getString("amount")+"</td></tr>");
              
                 
             }
                 
               
          
                   
               PreparedStatement ps1=con.prepareStatement("Select name,type,comp_name,date,amount from recharge where accn='"+accnumber+"' and  MONTH(date)=MONTH(now()) "
                       + "and YEAR(date)=YEAR(now());");
               
                ResultSet rs1=ps1.executeQuery();
                
               
               out.println("<table border style='color:black;align:center; margin-left:auto; margin-right:auto;'>");  
             out.println("<tr><td>Name</td><td>Type</td><td>Comp_Name"
                     + "</td><td>Date</td><td>Amount</td></tr><br>"); 
             while(rs1.next())
             {
                 out.println("<tr><td>"+rs1.getString("name")+"</td>");
               out.println("<td>"+rs1.getString("type")+"</td>");
              out.println("<td>"+rs1.getString("comp_name")+"</td>");
              out.println("<td>"+rs1.getString("date")+"</td>");
              out.println("<td>"+rs1.getString("amount")+"</td></tr>");
              
                 
             }
                
    
%>
<%
     
    
                    
                   
               PreparedStatement ps2=con.prepareStatement("Select name,payee_name,date,amount from transfer where accnumber='"+accnumber+"' and  MONTH(date)=MONTH(now()) "
                       + "and YEAR(date)=YEAR(now());");
               
                ResultSet rs2=ps2.executeQuery();
                
                
                
               out.println("<table border style='color:black;align:center; margin-left:auto; margin-right:auto;'>");  
             out.println("<tr><td>Action</td><td>Payee_AccNumber"
                     + "</td><td>Date</td><td>Amount</td></tr><br>"); 
             while(rs2.next())
             {
                 
                out.println("<tr><td>"+rs2.getString("name")+"</td>");
              
              out.println("<td>"+rs2.getString("payee_name")+"</td>");
              out.println("<td>"+rs2.getString("date")+"</td>");
              out.println("<td>"+rs2.getString("amount")+"</td></tr>");
              
                 
             }

          
%>
<%
     
    
                    
                   
               PreparedStatement ps3=con.prepareStatement("Select action,date,amount from deposit where accnumber='"+accnumber+"' and  MONTH(date)=MONTH(now()) "
                       + "and YEAR(date)=YEAR(now());");
               
                ResultSet rs3=ps3.executeQuery();
                
                 
                
               out.println("<table border style='color:black;align:center; margin-left:auto; margin-right:auto;'>");  
             out.println("<tr><td>Action</td>"
                     + "<td>Date</td><td>Amount</td></tr><br>"); 
             while(rs3.next())
             {
                 
                out.println("<tr><td>"+rs3.getString("action")+"</td>");
              
             
              out.println("<td>"+rs3.getString("date")+"</td>");
              out.println("<td>"+rs3.getString("amount")+"</td></tr>");
              
                 
             }

        }
        
        else if(year!=null && !year.equals("") )
        {    
        
        
%>
<%
   
    PreparedStatement ps11=con.prepareStatement("Select wallet from register where accnumber='"+accnumber+"' ;");
               
                ResultSet rs11=ps11.executeQuery();
                while(rs11.next())
                {
                    out.println("<br><h3 style='color:#FF5800;'>Wallet Balance :" + rs11.getInt("wallet")+"</h3>");
                }
  
                
               PreparedStatement ps4=con.prepareStatement("Select bill_name,date,amount from bills where accno='"+accnumber+"' ");
               
                ResultSet rs4=ps4.executeQuery();
                
               
                
               
               out.println("<table border style='color:black;align:center; margin-left:auto; margin-right:auto;' >");  
             out.println("<tr><td>Action</td><td>Date</td><td>Amount</td></tr>"); 
             while(rs4.next() )
             {
              
              out.println("<tr><td>"+rs4.getString("bill_name")+"</td>");
              out.println("<td>"+rs4.getString("date")+"</td>");
              out.println("<td>"+rs4.getString("amount")+"</td></tr>");
              
                 
             }
                 
               
           out.println("<br>");
                   
               PreparedStatement ps5=con.prepareStatement("Select name,type,comp_name,date,amount from recharge where accn='"+accnumber+"' ");
               
                ResultSet rs5=ps5.executeQuery();
                
               
                
               out.println("<table border style='color:black;align:center; margin-left:auto; margin-right:auto;'>");  
             out.println("<tr><td>Name</td><td>Type</td><td>Comp_Name"
                     + "</td><td>Date</td><td>Amount</td></tr><br>"); 
             while(rs5.next())
             {
                 out.println("<tr><td>"+rs5.getString("name")+"</td>");
               out.println("<td>"+rs5.getString("type")+"</td>");
              out.println("<td>"+rs5.getString("comp_name")+"</td>");
              out.println("<td>"+rs5.getString("date")+"</td>");
              out.println("<td>"+rs5.getString("amount")+"</td></tr>");
              
                 
             }
                
    
%>
<%
     
    
                    
                   
               PreparedStatement ps6=con.prepareStatement("Select name,payee_name,date,amount from transfer where accnumber='"+accnumber+"' ");
               
                ResultSet rs6=ps6.executeQuery();
                
                
               out.println("<table border style='color:black;align:center; margin-left:auto; margin-right:auto;'>");  
             out.println("<tr><td>Action</td><td>Payee_AccNumber"
                     + "</td><td>Date</td><td>Amount</td></tr><br>"); 
             while(rs6.next())
             {
                 
                out.println("<tr><td>"+rs6.getString("name")+"</td>");
              
              out.println("<td>"+rs6.getString("payee_name")+"</td>");
              out.println("<td>"+rs6.getString("date")+"</td>");
              out.println("<td>"+rs6.getString("amount")+"</td></tr>");
              
                 
             }

          
%>
<%
     
    
                    
                   
               PreparedStatement ps7=con.prepareStatement("Select action,date,amount from deposit where accnumber='"+accnumber+"' ");
               
                ResultSet rs7=ps7.executeQuery();
                
              
                
               out.println("<table border style='color:black;align:center; margin-left:auto; margin-right:auto;'>");  
             out.println("<tr><td>Action</td>"
                     + "<td>Date</td><td>Amount</td></tr><br>"); 
             while(rs7.next())
             {
                 
                out.println("<tr><td>"+rs7.getString("action")+"</td>");
              
             
              out.println("<td>"+rs7.getString("date")+"</td>");
              out.println("<td>"+rs7.getString("amount")+"</td></tr>");
              
                 
             }

        }
%>

     
              