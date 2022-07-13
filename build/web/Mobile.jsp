<%-- 
    Document   : Mobile
    Created on : 19 Dec, 2021, 9:54:01 PM
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
    <title>Mobile</title>    
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
    <h2 style="padding-left:50px;color:#FF5800; ">Mobile Recharge</h2><br> 
		
    <div class="login"> 
		
    <form id="login" name="login" method="post">    
        <label><b>Account Number :    
        </b>    
        </label>    
        <input type="number" name="accnumber" id="accnumber" placeholder="<% out.print(accnumber); %> "  style="font-size:20px;">
        <br><br>
<hr>		
		
			
		<label><b>Linked Name :    
        </b>    
        </label>   
        <input type="text" name="name" id="name" placeholder="Persons name " style="font-size:20px;" required>
		
        <br><br>
				 
		<label><b>Recharge Type : 
        </label>    
        <input type="text" name="type" id="type" placeholder="Recharge Type" value="Mobile" style="font-size:20px;" required/>	
        <br><br> 
		
		<label><b>Company Name : 
        </label>  
        <input type="text" name="comp_name" id="comp_name" placeholder="Company Name" style="font-size:20px;" required/>	
        <br><br>
		
		<label><b>Circle : 
        </label>   
        <input type="text" name="circle" id="circle" placeholder="Circle" style="font-size:20px;" required />		
        <br><br> 
		 		
		<label><b>Amount : 
        </label>   
        <input type="number" name="num" id="num" placeholder="Amount" style="font-size:20px;" required />	
        <br><br> 
		 		
        <input type="submit" name="log" id="log" value="Pay Bill" style="font-size:20px;"/>       
        <br><br>    
		 
    </form>  </div></td></tr></table>   
</div>    
</body>    
</html>     
<%
  

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","");
Statement st= con.createStatement();

try{
     if (balance>0){
    String sql="insert into recharge(accn,name,type,comp_name,circle,date,amount) values(?,?,?,?,?,?,?)";
    PreparedStatement ps=con.prepareStatement(sql);
    
     
    
    String type = "Mobile";
    String name=request.getParameter("name");
    String comp_name =request.getParameter("comp_name");
    String circle = request.getParameter("circle");
    String amount = request.getParameter("num");
     
        if(amount==null || circle==null || name==null || comp_name==null)
            return;
        if(amount.equals("") || circle.equals("") || name.equals("") || comp_name.equals("") )
            return;
     
        
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
   ps.setString(2,name);
   ps.setString(3,type);
     ps.setString(4,comp_name);
     ps.setString(5,circle);
     ps.setString(6,stringDate);
     ps.setString(7,amount);
    
      ps.executeUpdate();
      
    
      con.close();
      
     out.println("<div style='color:#FF5800;   font-size:35px; padding-left:400px;'> Recharge has been processed <br> Kindly check your mobile</div>");
     }
     else{
          out.println("<div style='color:#FF5800;  font-size:35px; padding-left:400px;'> out of balance </div>");
      }
}
catch (Exception e) {
e.printStackTrace();

}


     
%>		
	
