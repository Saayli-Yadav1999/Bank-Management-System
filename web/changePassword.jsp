<%-- 
    Document   : changePassword
    Created on : 12 Jan, 2022, 11:23:32 PM
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
  <script>
          
            // Function to check Whether both passwords
            // is same or not.
            function checkPassword(form) {
                password1 = form.password.value;
                password2 = form.cpassword.value;
  
                // If password not entered
                if (password1 == '')
                    alert ("Please enter Password");
                      
                // If confirm password not entered
                else if (password2 == '')
                    alert ("Please enter confirm password");
                      
                // If Not same return False.    
                else if (password1 != password2) {
                    alert ("\nPassword did not match: Please try again...")
                    return false;
                }
  
                // If same return True.
                else{
                    alert("Password Match!")
                    return true;
                }
            }
        </script>   
</head>    
<body>  

<h1 style="color:black;padding-left: 350px; font-size:60px;">BANK OF SOMAIYA</h1>
    
	<table><tr><td>
        <div style="text-align: left; color:lightgreen; font-size:25px;">
           
        </div>
                </td>
                <td>
                      <h2 style="color:#FF5800;padding-left:300px;">Change Password </h2><br> 
    <div style=" color:lightgreen;  font-size:25px; padding-left:300px;"> 
       
    <form id="login" name="login" method="post"  onSubmit = "return checkPassword(this)">   
       
        <label><b>Account Number :    
        </b>    
        </label>    
        <input type="number" name="accnumber" id="accnumber" placeholder="Account Number" style="font-size:20px;" required>    
        <br><br>    
        <label><b>Password  :   
        </b>    
        </label>    
        <input type="Password" name="password" placeholder=" " style="font-size:20px;" required>    
        <br><br>  
         <label><b>Confirm Password  :   
        </b>    
        </label>    
        <input type="Password" name="cpassword" placeholder="" style="font-size:20px;" required>    
        <br><br>  
        <input type="submit" name="log" id="log" value="Log In " style="font-size:20px;"/>       
        <br><br>    
       
        
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
                 String password=request.getParameter("cpassword");
                 
                 Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bank";
               Connection con = DriverManager.getConnection(url,"root","");
               PreparedStatement ps=con.prepareStatement("update register set password=? where  accnumber=?");
                 ps.setString(1, password);
                ps.setString(2, accnumber);
                ps.executeUpdate();
                out.println("<h1 style='padding-left:200px;'>Password Sucessfully Changed </h1>");
            
               
            }
            catch(Exception e)
            {
               out.println(e.getStackTrace()); 
            }
                
    
    
%>    