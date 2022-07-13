<%-- 
    Document   : addNewPayee.jsp
    Created on : 19 Dec, 2021, 9:45:48 PM
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
%>

<!DOCTYPE html>    
<html>    
<head>    
    <title>Add new Payee</title>    
    <link rel="stylesheet" type="text/css" href="login1.css">    
</head>    
<body>  
	<h1 style="color:black;padding-left: 350px; font-size:60px;">BANK OF SOMAIYA</h1>	
	<table><tr><td>
        <div style="text-align: left; color:lightgreen; font-size:25px;">
            
        </div>
                </td>
                <td>
                       
		 <div style=" color:lightgreen;  font-size:25px; padding-left:400px;"> 
    <h2 style="padding-left:50px;color:#FF5800;">Add New Payee</h2><br> 
		
    <div class="login"> 
		
    <form id="login" name="login" method="post" action="addNewPayee.jsp">  
        
         <label><b> Account Number : 
        </b>    
        </label>    
        <input type="number" name="accnumber" id="accnumber" placeholder=" <% out.print(accnumber); %>" style="font-size:20px;">    
        <br><br> 
       
        <label><b>Payee Account Number : 
        </b>    
        </label>    
        <input type="number" name="accnumber1" id="accnumber" placeholder="Account Number" style="font-size:20px;">    
        <br><br> 
		<label><b>IFSC Code :    
        </b>    
        </label>    
        <input type="text" name="code" id="code" placeholder="IFSC code " style="font-size:20px;" required>    
        <br><br> 
        <label><b>Name Of Account Holder : 
        </b>    
        </label>    
        <input type="text" name="accname" id="accname" placeholder="Account Holder Name" style="font-size:20px;" required> 		
        <br><br> 
		<label><b>Mobile No  : 
        </b>    
        </label>    
        <input type="text" name="num" id="num" placeholder="Mobile Number" style="font-size:20px;" required />	
        <br><br> 
		 		
        <input type="submit" name="log" id="log" value="Add New Payee" style="font-size:20px;"/>       
        <br><br>    
		
    </form>     
</div>    </td></tr></table>
</body>    
</html>     
	
<%
  


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","");
Statement st= con.createStatement();
   String accnum = request.getParameter("accnumber1");
 
    PreparedStatement ps=con.prepareStatement("Select accnumber from addnewpayee where accreg=?");
                ps.setString(1, accnumber);
              
                ResultSet rs=ps.executeQuery();
                String val;
               
               while(rs.next()){
                   val = rs.getString("accnumber");
                 
                    if(val.equals(accnum)) {
                        out.println(" <div style='color:#FF5800;  font-size:35px; padding-left:400px;'> Account Already Exist</div>");
                }
               }
  
            
   if(accnum!=null){
            try{
   
            String sql="insert into addnewpayee(accreg,accnumber,code,acchname,mobile,date) values(?,?,?,?,?,?)";
            PreparedStatement ps1=con.prepareStatement(sql);
    
          
            String code =request.getParameter("code");
            String acchname = request.getParameter("accname");
            String mobile = request.getParameter("num");
      
            long millis = System.currentTimeMillis();
            java.sql.Date sqlDate = new java.sql.Date(millis);
            java.util.Date  utilDate = new java.util.Date(sqlDate.getTime());
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
             // converting the util date into string format
            final String stringDate = dateFormat.format(utilDate);
 
    
                ps1.setString(1,accnumber);
                ps1.setString(2,accnum);
                ps1.setString(3,code);
                ps1.setString(4,acchname);
                ps1.setString(5,mobile);
                ps1.setString(6,stringDate);
                 ps1.executeUpdate();


                con.close();
              
               out.println(" <div style='color:#FF5800; font-size:35px; padding-left:400px;'> payee sucessfully added</div>");

                }
                catch (Exception e) {
                    e.printStackTrace();
                 

                }}
  
      
              
%>	
