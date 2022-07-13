package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.*;
import java.sql.*;
import java.util.*;
import java.io.*;

public final class loginform_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/menu.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" ");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>TODO supply a title</title>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width\">\r\n");
      out.write("        <style>\r\n");
      out.write("            /* Add a black background color to the top navigation */\r\n");
      out.write(".topnav {\r\n");
      out.write("  background-color: orange;\r\n");
      out.write("  overflow: hidden;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Style the links inside the navigation bar */\r\n");
      out.write(".topnav a {\r\n");
      out.write("  float: right;\r\n");
      out.write("  display: block;\r\n");
      out.write("  color: black;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  padding: 20px 50px;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  font-size: 17px;\r\n");
      out.write("  font-weight:bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Change the color of links on hover */\r\n");
      out.write(".topnav a:hover {\r\n");
      out.write("  background-color: white;\r\n");
      out.write("  color: black;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("body{\r\n");
      out.write("    background-color:white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("     </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("      <div class=\"topnav\" id=\"myTopnav\">\r\n");
      out.write("          \r\n");
      out.write("  <a href=\"loginform.jsp\">Home</a>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write(" \r\n");
      out.write("</div>\r\n");
      out.write("        \r\n");
      out.write("      \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("<html>    \n");
      out.write("<head>    \n");
      out.write("    <title>Login Form</title>    \n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"login1.css\">  \n");
      out.write("    \n");
      out.write("</head>    \n");
      out.write("<body>  \n");
      out.write("\t<h1 style=\"color:black;padding-left: 350px; font-size:60px;\">BANK OF SOMAIYA</h1>\n");
      out.write("    \n");
      out.write("\t<table><tr><td>\n");
      out.write("        <div style=\"text-align: left; color:lightgreen; font-size:25px;\">\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                      <h2 style=\"color:#FF5800;padding-left:300px;\">Login Here</h2><br> \n");
      out.write("    <div style=\" color:lightgreen;  font-size:25px; padding-left:300px;\"> \n");
      out.write("       \n");
      out.write("    <form id=\"login\" name=\"login\" method=\"post\" action=\"loginform.jsp\">   \n");
      out.write("       \n");
      out.write("        <label><b>Account Number :    \n");
      out.write("        </b>    \n");
      out.write("        </label>    \n");
      out.write("        <input type=\"number\" name=\"accnumber\" id=\"accnumber\" placeholder=\"Account Number\" style=\"font-size:20px;\" required>    \n");
      out.write("        <br><br>    \n");
      out.write("        <label><b>Password  :   \n");
      out.write("        </b>    \n");
      out.write("        </label>    \n");
      out.write("        <input type=\"Password\" name=\"password\" placeholder=\"Last 6 digit of Debit Card \" style=\"font-size:20px;\" required>    \n");
      out.write("        <br><br>    \n");
      out.write("        <input type=\"submit\" name=\"log\" id=\"log\" value=\"Log In \" style=\"font-size:20px;\"/>       \n");
      out.write("        <br><br>    \n");
      out.write("       \n");
      out.write("        <a href=\"changePassword.jsp\" style=\"font-size:30px;\"> Change password </a>\n");
      out.write("    </form> \n");
      out.write("        \n");
      out.write("   \n");
      out.write("</div>   \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("</body>    \n");
      out.write("</html>     \n");
      out.write(" ");

   
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
     
           


    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
