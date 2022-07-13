package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addNewPayee_jsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>    \n");
      out.write("<html>    \n");
      out.write("<head>    \n");
      out.write("    <title>Login Form</title>    \n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"login.css\">    \n");
      out.write("</head>    \n");
      out.write("<body>  \n");
      out.write("\t<h1> Welcome to Bank of SOMAIYA </h1><br>\n");
      out.write("    <h2>Add New Payee</h2><br> \n");
      out.write("\t\t\n");
      out.write("    <div class=\"login\"> \n");
      out.write("\t\t\n");
      out.write("    <form id=\"login\" name=\"login\" method=\"post\" action=\"AddNewPayeedb.php\">    \n");
      out.write("        <label><b>Account Number     \n");
      out.write("        </b>    \n");
      out.write("        </label>    \n");
      out.write("        <input type=\"number\" name=\"accnumber\" id=\"accnumber\" placeholder=\"Account Number \">    \n");
      out.write("        <br><br> \n");
      out.write("\t\t<label><b>IFSC Code     \n");
      out.write("        </b>    \n");
      out.write("        </label>    \n");
      out.write("        <input type=\"text\" name=\"code\" id=\"code\" placeholder=\"IFSC code \">    \n");
      out.write("        <br><br> \n");
      out.write("        <label><b>Name Of Account Holder    \n");
      out.write("        </b>    \n");
      out.write("        </label>    \n");
      out.write("        <input type=\"text\" name=\"accname\" id=\"accname\" placeholder=\"Account Holder Name\"> \t\t\n");
      out.write("        <br><br> \n");
      out.write("\t\t<label><b>Mobile No   \n");
      out.write("        </b>    \n");
      out.write("        </label>    \n");
      out.write("        <input type=\"text\" name=\"num\" id=\"num\" placeholder=\"Mobile Number\" />\t\n");
      out.write("        <br><br> \n");
      out.write("\t\t \t\t\n");
      out.write("        <input type=\"submit\" name=\"log\" id=\"log\" value=\"Add New Payee\" />       \n");
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
