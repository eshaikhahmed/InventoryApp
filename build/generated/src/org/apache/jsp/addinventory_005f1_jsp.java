package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addinventory_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write("        <style>\n");
      out.write(".hidden {\n");
      out.write(" \n");
      out.write("    display: none;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("</style>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    <center><h1 style='font-size:30px;'>Add Inventory</h1>\n");
      out.write("    <table  >        \n");
      out.write("   <form action='save.jsp' method=\"post\"  enctype=\"multipart/form-data\">\n");
      out.write("    <p>\n");
      out.write("\t\t\t<center><img id=\"show_image\" height=\"200\" width=\"300\" src=\"images/image_upload.png\" onclick=\"callhidden();\" /></center>\n");
      out.write("\t\t\t<input class=\"hidden\" type='file' name='upload_image' id='upload_image' onchange=\"loadFile(this,'1')\" />\n");
      out.write("\t\t  </p>\n");
      out.write("<tr style='line-height: 10px;'>\n");
      out.write("    <td>Inventory Name : </td>\n");
      out.write("        <td><input type=\"text\" placeholder=\"Inventory Name\" name=\"inventory_name\" id=\"inventory_name\" value=\"\" required/> \n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("    <td>  Brand :   </td>\n");
      out.write("    <td>\n");
      out.write("    <input type=\"text\" placeholder=\"Brand\" name=\"brand\" id=\"brand\" value=\"\" required/>\n");
      out.write("   </td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("    <td>Price :   </td>\n");
      out.write("    <td> <input type=\"number\" placeholder=\"Price\" name=\"price\" id=\"price\" value=\"\" required/> \n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("<input type=\"hidden\" placeholder=\"inventory_type\" name=\"inventory_type\" id=\"inventory_type\" value=\"New\" /> <br>\n");
      out.write("  <tr>\n");
      out.write("    <td>Condition : \n");
      out.write("    </td>\n");
      out.write("    <td><input type=\"text\" placeholder=\"Condition\" name=\"condition\" id=\"condition\" value=\"\" required/> \n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("      <td>  \n");
      out.write("  Location : \n");
      out.write("     </td>\n");
      out.write("     <td>  \n");
      out.write("        <input type=\"text\" placeholder=\"Location\" name=\"location\" id=\"location\" value=\"\"  required/> \n");
      out.write("     </td>\n");
      out.write("  </tr>\n");
      out.write("   \n");
      out.write("        <tr>\n");
      out.write("            <td>\n");
      out.write("                <input type=\"submit\" style='height:30px;width:100px;color:white;border:none;background:red;font-weight:bold;' name=\"submit\" id=\"submit\" value=\"Save\" /> \n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        <input type=\"hidden\" placeholder=\"created_by\" name=\"created_by\" id=\"created_by\" value=\"1\" /> <br>      \n");
      out.write("         <input type=\"hidden\" placeholder=\"page\" name=\"page\" id=\"created_by\" value=\"test\" /> <br>        \n");
      out.write("\n");
      out.write("   </form>\n");
      out.write("    </table>\n");
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
