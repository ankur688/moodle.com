<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>

<% 
String s=(String)session.getAttribute( "username" );

out.println( "welcome,"+s );
out.println("<br></br>");
Date d=new Date();
out.println(d);
out.println("<br></br>");
%>
<%
int var=0;    
session.setAttribute("vc",var);
int count=0;
session.setAttribute("corrc",count);
Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    
        
    Statement st=conn.createStatement();
    
 int tot=0;

    
    ResultSet rs=st.executeQuery("select * from C_QUES");
    while(rs.next())
    {    
   
      tot++;
    }
    
    session.setAttribute("tot",tot);
%>
<jsp:forward page="c_test1.jsp"/>


