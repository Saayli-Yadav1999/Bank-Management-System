<%-- 
    Document   : transfer
    Created on : 19 Dec, 2021, 9:50:07 PM
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
<%

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","");
Statement st= con.createStatement();
   String accnum = request.getParameter("accnumber");
 
    PreparedStatement ps=con.prepareStatement("Select acchname,accnumber from addnewpayee where accreg=?");
                ps.setString(1, accnumber);
              
                ResultSet rs=ps.executeQuery();
               
  
 %>

<html>    
<head>    
    <title>Transfer Via NEFT</title>    
    <link rel="stylesheet" type="text/css" href="login1.css">    
</head>    
<body>  
    <h1 style="color:amber;padding-left: 350px; font-size:60px;">BANK OF SOMAIYA</h1>
	<table><tr><td>
       
                </td>
                <td>
                       
		 <div style=" color:lightgreen;  font-size:25px; padding-left:400px;"> 
    <h2 style="padding-left:0px;color:#FF5800;">Transfer Via NEFT</h2><br> 
		
    <div class="login"> 
	
    <form id="login" name="login" method="post">    
        <label><b>Account Number :     
        </b>    
        </label>    
        <input type="number" id="accnumber" placeholder="<% out.print(accnumber); %> "  style="font-size:20px;">
        <br><br> 
		<label><b>Account Type : 
        </b>    
        </label>    
        <select name="acctype" id="acctype" style="font-size:20px;">
		<option> Savings Account </option>
		
		</select>
        <br><br> 
		<hr>		
        <label><b>Name Of Account Holder :   
        </b>    
        </label> 
        <select name="acchname" id="acchname" style="font-size:20px;">
                   
            <% while(rs.next()){
                  %>
                  <option> <%=rs.getString("acchname") + " "%><%=rs.getString("accnumber")%>
                   </option>
			
         <% } %>
         </select>
        <br><br> 
		<label><b>Amount :
        </label> <br>   
        <input type="number" name="num" id="num" placeholder="Amount" style="font-size:20px;" required/>	
        <br><br> 
		 		
        <input type="submit" name="log" id="log" value="Transfer" style="font-size:20px;" />       
        <br><br>    
		
    </form> </div> </td></tr>
    </table>
</div>    
</body>    
</html>     

<%
   
try{
if (balance>0){
    String sql="insert into transfer(accnumber,name,payee_name,date,amount) values(?,?,?,?,?)";
    PreparedStatement ps2=con.prepareStatement(sql);
    
    
    
    String name = "transferred";
   
 
    String payee_name = request.getParameter("acchname");
    
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
 
    
     ps2.setString(1,accnumber);
     ps2.setString(2,name);
     ps2.setString(3,payee_name);
    
     ps2.setString(4,stringDate);
     ps2.setString(5,amount);
      ps2.executeUpdate();
      
    
      con.close();
     
     out.println("<div style='color:#FF5800;;  font-size:35px; padding-left:400px;'> Money transferred Successfully</div>");
}
else{
          out.println("<div style='color:#FF5800;  font-size:35px; padding-left:400px;'> out of balance </div>");
      }
}
catch (Exception e) {
e.printStackTrace();

}


     
%>	
	
