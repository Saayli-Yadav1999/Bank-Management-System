<%-- 
    Document   : WaterBill
    Created on : 19 Dec, 2021, 9:53:01 PM
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
    <title>Water</title>    
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
    <h2 style="padding-left:50px;color:#FF5800">Water Bill</h2><br> 
		
    <div class="login"> 
		
    <form id="login" name="login" method="post">    
        <label><b>Account Number     
        </b>    
        </label>  
        
       
        <input type="number" name="accnumber" id="accnumber" style="font-size:20px;" placeholder=" <% out.print(accnumber); %> ">
        <br><br>
<hr>		
		<label><b>Bill Name     
        </b>    
        </label>    
        <input type="text" name="bill_name" id="bill_name" placeholder="Bill Name " value="Water Bill" style="font-size:20px;" required>
        <br><br> 
				 
		<label><b>Consumer number  
        </label> <br>   
        <input type="number" name="cons_number" id="cons_number" placeholder="Consumer Number" style="font-size:20px;" required />	
        <br><br> 
		
		<label><b>Amount  
        </label> <br>   
        <input type="number" name="num" id="num" placeholder="Amount" style="font-size:20px;" required/>	
        <br><br> 
		 		
        <input type="submit" name="log" id="log" value="Pay Bill" style="font-size:20px;"/>       
        <br><br>    
		  
    </form>     
    </div>  </td></tr></table>  
</body>    
</html>     
<%
  

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","");
Statement st= con.createStatement();

try{
 if (balance>0){
    String sql="insert into bills(accno,bill_name,cons_number,date,amount) values(?,?,?,?,?)";
    PreparedStatement ps=con.prepareStatement(sql);
    
    
    
    String bill_name = "Water Bill";
    String cons_number =request.getParameter("cons_number");
    
    String amount = request.getParameter("num");
      int amount1 = Integer.parseInt(amount);
    String sql1="update register set balance=balance-? where accnumber=? ";
   
     PreparedStatement ps1=con.prepareStatement(sql1);
      ps1.setInt(1,amount1);
      ps1.setString(2,accnumber);
     ps1.executeUpdate();
     
     
    long millis = System.currentTimeMillis();
java.sql.Date sqlDate = new java.sql.Date(millis);
  java.util.Date  utilDate = new java.util.Date(sqlDate.getTime());
 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        // converting the util date into string format
final String stringDate = dateFormat.format(utilDate);
 
    
     ps.setString(1,accnumber);
     ps.setString(2,bill_name);
     ps.setString(3,cons_number);
    
     ps.setString(4,stringDate);
     ps.setString(5,amount);
      ps.executeUpdate();
      
    
      con.close();
     
     out.println("<div style='color:#FF5800;  font-size:35px; padding-left:400px;'> Bill Paid Successfully</div>");
 }
 else{
          out.println("<div style='color:#FF5800;  font-size:35px; padding-left:400px;'> out of balance </div>");
      }
}
catch (Exception e) {
e.printStackTrace();

}


     
%>	
	
	
	
