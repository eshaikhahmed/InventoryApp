package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addinventory_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <style>\n");
      out.write(".hidden {\n");
      out.write(" \n");
      out.write("    display: none;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    <center><h1>Add Inventory</h1>\n");
      out.write("        \n");
      out.write("   <form action='save.jsp' method=\"post\"  >\n");
      out.write("<!--       <p>\n");
      out.write("\t\t\t<center><img id=\"show_image\" height=\"200\" width=\"300\" src=\"images/image_upload.png\" onclick=\"callhidden();\" /></center>\n");
      out.write("\t\t\t<input class=\"hidden\" type='file' name='upload_image' id='upload_image' onchange=\"loadFile(this,'1')\" />\n");
      out.write("\t\t  </p>-->\n");
      out.write("  inventory_name :   <input type=\"text\" placeholder=\"inventory_name\" name=\"inventory_name\" id=\"inventory_name\" value=\"\" /> <br>\n");
      out.write("  brand :   <input type=\"text\" placeholder=\"brand\" name=\"brand\" id=\"brand\" value=\"\" /> <br>\n");
      out.write("  <input type=\"hidden\" placeholder=\"inventory_type\" name=\"inventory_type\" id=\"inventory_type\" value=\"New\" /> <br>\n");
      out.write("  price :   <input type=\"text\" placeholder=\"price\" name=\"price\" id=\"price\" value=\"\" /> <br>\n");
      out.write("  condition :   <input type=\"text\" placeholder=\"condition\" name=\"condition\" id=\"condition\" value=\"\" /> <br>\n");
      out.write("  location :   <input type=\"text\" placeholder=\"location\" name=\"location\" id=\"location\" value=\"\" /> <br>\n");
      out.write("  created_by :   <input type=\"text\" placeholder=\"created_by\" name=\"created_by\" id=\"created_by\" value=\"1\" /> <br>\n");
      out.write("   <input type=\"submit\" name=\"submit\" id=\"submit\" value=\"Save\" /> <br>\n");
      out.write("\n");
      out.write("    </center>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <script src=\"../js/jquery.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("function loadFile(input,row) {\n");
      out.write("\n");
      out.write("\t\tif (input.files && input.files[0]) {\n");
      out.write("\t\t\tvar reader = new FileReader();\n");
      out.write("\n");
      out.write("\t\t\treader.onload = function (e) {\n");
      out.write("\t\t\t\t$('#show_image').attr('src', e.target.result);\n");
      out.write("\t\t\t}\n");
      out.write("\n");
      out.write("\t\t\treader.readAsDataURL(input.files[0]);\n");
      out.write("\t\t\t}\n");
      out.write("}\n");
      out.write("function callhidden()\n");
      out.write("{\n");
      out.write("\t $(\"#upload_image\").click();\n");
      out.write("\t return false;\n");
      out.write("}\n");
      out.write("</script>\n");
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
