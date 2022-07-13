<%-- 
    Document   : loginform
    Created on : 19 Dec, 2021, 9:27:33 PM
    Author     : Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@include file="menu.html" %> 
<%@page import="javax.servlet.*,java.sql.*,java.util.*"%>
<%@page import="java.io.*"%>
<html>    
<head>    
    <title>Login Form</title>    
    <link rel="stylesheet" type="text/css" href="login1.css">  
    
</head>    
<body>  
	<h1 style="color:black;padding-left: 350px; font-size:60px;">BANK OF SOMAIYA</h1>
    
	<table><tr><td>
        <div style="text-align: left; color:lightgreen; font-size:25px;">
           
        </div>
                </td>
                <td>
                      <h2 style="color:#FF5800;padding-left:300px;">Login Here</h2><br> 
    <div style=" color:lightgreen;  font-size:25px; padding-left:300px;"> 
       
    <form id="login" name="login" method="post" action="loginform.jsp">   
       
        <label><b>Account Number :    
        </b>    
        </label>    
        <input type="number" name="accnumber" id="accnumber" placeholder="Account Number" style="font-size:20px;" required>    
        <br><br>    
        <label><b>Password  :   
        </b>    
        </label>    
        <input type="Password" name="password" placeholder="Last 6 digit of Debit Card " style="font-size:20px;" required>    
        <br><br>    
        <input type="submit" name="log" id="log" value="Log In " style="font-size:20px;"/>       
        <br><br>    
       
        <a href="changePassword.jsp" style="font-size:30px;"> Change password </a>
    </form> 
        
   
</div>   
                </td>
            </tr>
        </table>
</body>    
</html>     
 <%
   
try{
String accnumber=request.getParameter("accnumber");
session.setAttribute("accnumber",accnumber);
String password = request.getParameter("password");
           
            String val="";
            String val1="";
           
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bank";
               Connection con = DriverManager.getConnection(url,"root","");
                    
                   
               PreparedStatement ps=con.prepareStatement("Select accnumber,password from register where accnumber=? and password=? ");
               ps.setString(1,accnumber);
               ps.setString(2,password);
                ResultSet rs=ps.executeQuery();
                
                while(rs.next()){
                       val=rs.getString(1);
                       val1=rs.getString(2);
                      
                      
                   if(val.equals(accnumber) && val1.equals(password))
                        response.sendRedirect("choose.jsp");
                   else if(!val.equals(accnumber) && !val1.equals(password))
                       out.println("<h2 style='color:black;'> user doesnot exist </h2>");
                   
                  
                }  
                if(!rs.next() && !accnumber.equals("") && !password.equals(""))
                     out.println("<h2 style='color:#FF5800;'> user doesnot exist </h2>");
                           
                  
                  
                
        }
       

       

       catch(Exception e)
            {
                e.getStackTrace();
              
                    
               
            }
     
           

%>