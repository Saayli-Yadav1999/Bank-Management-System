package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class DTH_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("   \n");
      out.write("<html>    \n");
      out.write("<head>    \n");
      out.write("    <title>Transfer Via NEFT</title>    \n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"login.css\">    \n");
      out.write("</head>    \n");
      out.write("<body>  \n");
      out.write("\t<h1> Welcome to Bank of SOMAIYA </h1><br>\n");
      out.write("    <h2>DTHRecharge</h2><br> \n");
      out.write("\t\t\n");
      out.write("    <div class=\"login\"> \n");
      out.write("\t<?php if(isset($_GET['error'])) { ?>\n");
      out.write("\t\t<p><?php echo $_GET['error']; ?></p>\n");
      out.write("\t\t<?php } ?>\t\n");
      out.write("    <form id=\"login\" name=\"login\" method=\"post\">    \n");
      out.write("        <label><b>Account Number     \n");
      out.write("        </b>    \n");
      out.write("        </label>    \n");
      out.write("        <input type=\"number\" name=\"accnumber\" id=\"accnumber\" placeholder=\"Account Number \" value=\"<?php echo (isset($accnumber1))?$accnumber1:'';?>\">\n");
      out.write("        <br><br>\n");
      out.write("<hr>\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t\t\t \n");
      out.write("\t\t<label><b>Recharge Type \n");
      out.write("        </label> <br>   \n");
      out.write("        <input type=\"text\" name=\"type\" id=\"type\" placeholder=\"Recharge Type\" value=\"DTH\" />\t\n");
      out.write("        <br><br> \n");
      out.write("\t\t\n");
      out.write("\t\t<label><b>Company Name  \n");
      out.write("        </label> <br>   \n");
      out.write("        <input type=\"text\" name=\"comp_name\" id=\"comp_name\" placeholder=\"Company Name\" />\t\n");
      out.write("        <br><br>\n");
      out.write("\t\t\n");
      out.write("\t\t<label><b>Location  \n");
      out.write("        </label> <br>   \n");
      out.write("        <input type=\"text\" name=\"circle\" id=\"circle\" placeholder=\"Location\" />\t\t\n");
      out.write("        <br><br> \n");
      out.write("\t\t \t\t\n");
      out.write("\t\t<label><b>Amount  \n");
      out.write("        </label> <br>   \n");
      out.write("        <input type=\"number\" name=\"num\" id=\"num\" placeholder=\"Amount\" />\t\n");
      out.write("        <br><br> \n");
      out.write("\t\t \t\t\n");
      out.write("        <input type=\"submit\" name=\"log\" id=\"log\" value=\"Pay Bill\" />       \n");
      out.write("        <br><br>    \n");
      out.write("\t\t<h3>  <a href=\"choose.php\"> Back </a> </h3>\n");
      out.write("    </form>     \n");
      out.write("</div>    \n");
      out.write("</body>    \n");
      out.write("</html>     \n");
      out.write("\t\n");
      out.write("\t\n");
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
