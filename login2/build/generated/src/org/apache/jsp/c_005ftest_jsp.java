package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class c_005ftest_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');

    
        
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
int i = 0 ;
    do
{    
    String query="SELECT * FROM C_QUES WHERE QUES_NO=(i+1)";
    Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(query);
//while(rs.next())
//{
//for(int i=1;i<=5;i++)
rs.next();    
out.println(rs.getString(2)+"<br>");
out.println("1."+rs.getString(3)+" ");
out.println("2."+rs.getString(4)+" ");
out.println("3."+rs.getString(5)+" ");
out.println("4."+rs.getString(6)+" ");

      out.write("    \n");
      out.write("  <input type=\"radio\" name=\"answer1\" value=\"1\">1<br>\n");
      out.write("  <input type=\"radio\" name=\"answer2\" value=\"2\">2<br>\n");
      out.write("  <input type=\"radio\" name=\"answer3\" value=\"3\">3<br>\n");
      out.write("  <input type=\"radio\" name=\"answer4\" value=\"4\">4<br>\n");

    
}while(i<=20);
    


    
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
