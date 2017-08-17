package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.sql.*;
import java.lang.*;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<head>\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("<link href=\"stylenew.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"wrapper\">\n");
      out.write("\t<div id=\"header-wrapper\">\n");
      out.write("\t\t<div id=\"header\">\n");
      out.write("\t\t\t<div id=\"logo\">\n");
      out.write("\t\t\t\t<h1>moodle</h1>\n");
      out.write("\t\t\t\t");
 
String s=(String)session.getAttribute( "username" );
out.println( "welcome,"+s );
out.println("<br></br>");
Date d=new Date();
out.println(d);

      out.write("\n");
      out.write("<u><a href=\"logout.jsp\">LOGOUT</a></u>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end #header -->\n");
      out.write("\t<div id=\"menu-wrapper\">\n");
      out.write("\t\t<ul id=\"menu\">\n");
      out.write("\t\t\t<li class=\"current_page_item\"><span>ADD NEW QUESTION :)</span></a></li>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t</ul>\n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end #menu -->\n");
      out.write("\t<div id=\"splash\">\n");
      out.write("           \n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("  \n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\t<div id=\"page\">\n");
      out.write("             \n");
      out.write("\t<form action=\"add1.jsp\" method=\"post\">\n");
      out.write("            \n");
      out.write("   <input type=\"text\" placeholder=\"LANGUAGE\" name=\"lang\"/><br>\n");
      out.write("      <input type=\"text\" placeholder=\"QUESTION\" name=\"ques\"/><br>\n");
      out.write("\t  <input type=\"text\" placeholder=\"OPTION 1\" name=\"o1\"><br>\n");
      out.write("    <input type=\"text\" placeholder=\"OPTION 2\" name=\"o2\"><br>\n");
      out.write("    <input type=\"text\" placeholder=\"OPTION 3\" name=\"o3\"><br>\n");
      out.write("    <input type=\"text\" placeholder=\"OPTION 4\" name=\"o4\"><br>\n");
      out.write("    <input type=\"text\" placeholder=\"CORRECT\" name=\"corr\"><br>\n");
      out.write("    <input type=\"submit\" value=\"ADD QUESTION\"><br>\n");
      out.write("\n");
      out.write("    </form>\n");
      out.write("                \n");
      out.write("\n");
      out.write("            \n");
      out.write("\t\t\n");
      out.write("\t\n");
      out.write("</div>\n");
      out.write("        <div id=\"footer\">\n");
      out.write("\t<p>developed by ANKUR SHISHODIA.</p>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
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
