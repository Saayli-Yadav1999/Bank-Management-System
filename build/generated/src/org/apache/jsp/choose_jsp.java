package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class choose_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t\t<title> Home </title>\n");
      out.write("\t\t <style>\n");
      out.write("        .GFG {\n");
      out.write("            background-color: white;\n");
      out.write("            border: 2px solid black;\n");
      out.write("            color: green;\n");
      out.write("            padding: 5px 10px;\n");
      out.write("            text-align: center;\n");
      out.write("            display: inline-block;\n");
      out.write("            font-size: 20px;\n");
      out.write("            margin: 10px 30px;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"choose.css\"> \n");
      out.write("</head>\n");
      out.write("\t\t<body>\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t<h1 style=\"padding-top:20px;\">  Bank of SOMAIYA </h1><br>\n");
      out.write("    <h2>Menu</h2><br> \n");
      out.write("\t\t<div class=\"login\">\n");
      out.write("\t\t<h2> Your Balance is :  <?php \n");
      out.write("\t\twhile($rec = mysqli_fetch_assoc($res)){\n");
      out.write("\t\techo $rec[\"balance\"];\n");
      out.write("\t\t}?>\n");
      out.write("\t\t</h2>\n");
      out.write("\t\t\n");
      out.write("\t\t <button class=\"GFG\" \n");
      out.write("\t\tonclick=\"window.location.href = 'ViewStatement.php';\">\n");
      out.write("\t\t\tView Statement\n");
      out.write("\t\t</button> \n");
      out.write("\t\t\n");
      out.write("\t\t<button class=\"GFG\" \n");
      out.write("\t\tonclick=\"window.location.href = 'AddNewPayee.php';\">\n");
      out.write("\t\t\tAdd New Payee\n");
      out.write("\t\t</button>\n");
      out.write("\t\t\n");
      out.write("\t\t<button class=\"GFG\" \n");
      out.write("\t\tonclick=\"window.location.href = 'Transfer.php';\">\n");
      out.write("\t\t\tTransaction via NEFT\n");
      out.write("\t\t</button>\n");
      out.write("\t\t<br>\n");
      out.write("\t\t<button class=\"GFG\" \n");
      out.write("\t\tonclick=\"window.location.href = '#'\" style='background-color:yellow;'>\n");
      out.write("\t\t\tPay Bills\n");
      out.write("\t\t</button>\n");
      out.write("\t\t\t <br>\n");
      out.write("\t\t<button class=\"GFG\" \n");
      out.write("\t\t\t\tonclick=\"window.location.href = 'Electricity.php';\">\n");
      out.write("\t\t\t\t\tElectricity Bills\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t<br>\n");
      out.write("\t\t\t\t\t<button class=\"GFG\" \n");
      out.write("\t\t\t\t\tonclick=\"window.location.href = 'WaterBill.php';\">\n");
      out.write("\t\t\t\t\tWater Bills\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t<br>\n");
      out.write("\t\t<button class=\"GFG\" \n");
      out.write("\t\tonclick=\"window.location.href = '#'\" style='background-color:yellow;'>\n");
      out.write("\t\t\tRecharge\n");
      out.write("\t\t</button>\n");
      out.write("\t\t\t<br>\n");
      out.write("\t\t<button class=\"GFG\" \n");
      out.write("\t\tonclick=\"window.location.href = 'MobileBill.php';\">\n");
      out.write("\t\t\tMobile Recharge\n");
      out.write("\t\t</button>\n");
      out.write("\t\t<br>\t\n");
      out.write("\t\t<button class=\"GFG\" \n");
      out.write("\t\tonclick=\"window.location.href = 'DTHRecharge.php';\">\n");
      out.write("\t\t\tDTH Recharge\n");
      out.write("\t\t</button>\n");
      out.write("\t\t\t</div>\t\n");
      out.write("\t\t</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
