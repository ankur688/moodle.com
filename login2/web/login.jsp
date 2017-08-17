<%@page import="java.sql.*"%>
<%
    String u=request.getParameter("user");
    String p=request.getParameter("pass");
    String t=request.getParameter("typeofuser");
    if(t.equals("ADMIN"))
    {    
    session.setAttribute("username",u);
    session.setAttribute("password",p);
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    PreparedStatement ps=conn.prepareStatement("select * from admin where USERNAME=? and PASSWORD=?");
    ps.setString(1,u);
    ps.setString(2,p);
    
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {%>
    <jsp:forward page="adminhome.jsp"/>
      
<%
    }
else
{%>
<jsp:forward page="signupadmin.jsp"/>
<% }

}
else
{    
    session.setAttribute("username",u);
    session.setAttribute("password",p);
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    PreparedStatement ps=conn.prepareStatement("select * from usertable where USERNAME=? and PASSWORD=?");
    ps.setString(1,u);
    ps.setString(2,p);
    
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {%>
    <jsp:forward page="userhome.jsp"/>
      
<%
    }
else
{%>
<jsp:forward page="signup.jsp"/>
<% }
}


    %>