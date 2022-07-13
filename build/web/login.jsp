<%-- 
    Document   : login
    Created on : 19 Dec, 2021, 10:06:13 PM
    Author     : Yadav
--%>

 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*,java.sql.*,java.util.*"%>
<%@page import="java.io.*"%>

 
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Authentication page</title>
  </head>
  <body>
    

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
                    
                   
               PreparedStatement ps=con.prepareStatement("Select accnumber,password from register  ");
               
                ResultSet rs=ps.executeQuery();
                
              
                while(rs.next()){
                        val=rs.getString(1);
                        val1=rs.getString(2);
                   if(val.equals(accnumber) && val1.equals(password))
                        response.sendRedirect("choose.jsp");
                       
                 
                      
                            
                }  
               
                  
                  
                
        }
       

       

       

       catch(Exception e)
            {
                e.getStackTrace();
    
               out.println("user does not exist");
            }

%>
 
  </body>
</html>