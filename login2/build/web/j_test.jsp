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
session.setAttribute("vj",var);
int count=0;
session.setAttribute("corrj",count);
Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    
        
    Statement st=conn.createStatement();
    
 int tot=0;

    
    ResultSet rs=st.executeQuery("select * from JAVA_QUES");
    while(rs.next())
    {    
   
      tot++;
    }
    out.println(tot);
    
    session.setAttribute("totj",tot);
%>
<jsp:forward page="j_test1.jsp"/>


