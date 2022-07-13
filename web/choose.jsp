<%-- 
    Document   : choose
    Created on : 19 Dec, 2021, 9:43:19 PM
    Author     : Yadav
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*,java.sql.*,java.util.*"%>
<%@page import="java.io.*"%>
<%@include file="menu2.html" %>

<% 
    String accnumber=(String)session.getAttribute("accnumber");
    session.setAttribute("accnumber",accnumber);

    Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bank";
               Connection con = DriverManager.getConnection(url,"root","");
                    
                   
               PreparedStatement ps=con.prepareStatement("Select balance, wallet from register where accnumber=? ");
                ps.setString(1, accnumber);
               
                ResultSet rs=ps.executeQuery();
                
  
    
    
%>
<html>
<head>
		<title> Home </title>
                <style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>		
<body>
    <h1 style="color:black;padding-left: 350px; font-size:60px;">BANK OF SOMAIYA</h1>
    
             <div style=" color:#FF5800;  font-size:25px; padding-left:200px;">         
		<h2 style="color:orangered;"> Your Bank Balance is : <% while(rs.next()){
                    out.println(rs.getInt("balance"));
                    Integer wallet1 = rs.getInt("wallet");
                      int balance =rs.getInt("balance");
                session.setAttribute("balance",balance);
                int wallet = rs.getInt("wallet");
                session.setAttribute("wallet",wallet);
               
                
               
                %>
               &nbsp;&nbsp;&nbsp;&nbsp; Your Wallet Balance is:   <% 
                    out.println(wallet1);
                     
                }
                
               
                %>
                </h2>
                
     </div>
                <div style="padding-left:150px;padding-top:100px;">
               <div class="row">
  <div class="column">
    <a href="deposit.jsp" >
         <img alt="Deposit" src="deposit.PNG" width="150" height="70"><br><h2 >Deposit in Wallet</h2>
      </a>
  </div>
  <div class="column">
     <a href="withdraw.jsp">
         <img alt="Withdraw" src="withdraw.PNG" width="150" height="70"><br><h2>Withdraw From Wallet</h2>
      </a>
  </div>
  <div class="column">
     <a href="addNewPayee.jsp">
         <img alt="Beneficiary" src="beneficiary.PNG" width="150" height="70"><br><h2>Add New Beneficiary</h2>
      </a>
  </div>
   <div class="column">
     <a href="transfer.jsp">
         <img alt="Transfer" src="transfer.PNG" width="150" height="70"><br><h2>Transfer Money</h2>
      </a>
  </div>
                   <div class="column">
     <a href="ViewStatement.jsp">
         <img alt="ViewStatement" src="viewStatement.PNG" width="150" height="70"><br><h2>View Statement</h2>
      </a>
  </div>
                   <div class="column">
     <a href="Electricity.jsp">
         <img alt="Electricity Bill" src="Electricity.PNG" width="150" height="70"><br><h2>Electricity Bill</h2>
      </a>
  </div>
                   <div class="column">
     <a href="WaterBill.jsp">
         <img alt="Water Bill" src="Water.PNG" width="150" height="70"><br><h2>Water Bill</h2>
      </a>
  </div>
                   <div class="column">
     <a href="Mobile.jsp">
         <img alt="Mobile Recharge" src="Mobile.PNG" width="150" height="70"><br><h2>Mobile Recharge</h2>
      </a>
  </div>
                   <div class="column">
     <a href="DTH.jsp">
         <img alt="DTH Recharge" src="DTH.PNG" width="150" height="70"><br><h2>DTH Recharge</h2>
      </a>
  </div>
</div>    
                </div>
</body>
</html>