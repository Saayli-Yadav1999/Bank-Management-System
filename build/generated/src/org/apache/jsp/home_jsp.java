package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/menu3.html");
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
      out.write(" ");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Bank</title>\r\n");
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
      out.write("      <div class=\"topnav\" id=\"myTopnav\" >\r\n");
      out.write("          \r\n");
      out.write("  <a class=\"active\" href=\"loginform.jsp\" >Login</a>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write(" \r\n");
      out.write("</div>\r\n");
      out.write("        \r\n");
      out.write("      \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>    \n");
      out.write("<head>    \n");
      out.write("    <title>Bank</title>    \n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"login1.css\">  \n");
      out.write("    <style>\n");
      out.write(".flex-container {\n");
      out.write("  display: flex;\n");
      out.write("  background-color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".flex-container > div {\n");
      out.write("  background-color: orange;\n");
      out.write("  margin: 100px;\n");
      out.write("  padding: 10px;\n");
      out.write("  font-size: 30px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>    \n");
      out.write("<body >  \n");
      out.write("\t<h1 style=\"color: black;padding-left: 350px; font-size:60px;\"><i>BANK OF SOMAIYA</i></h1>\n");
      out.write("    \n");
      out.write("        <div>\n");
      out.write("        <div class=\"flex-container\">\n");
      out.write("  <div><b>About us:</b><br> Bank of Somaiya have branches in <br> mumbai , panvel , maharashtra  </div>\n");
      out.write("  <div ><b>Contact us on : </b><br> email id : bos@somaiya.in<br> Contact Number : 022-45120</div>\n");
      out.write("  <div><b>Main Branch Address:</b><br> Panvel sec-5E <br> Near Panvel Station </div>  \n");
      out.write("</div>\n");
      out.write("                \n");
      out.write("        </div>                   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
