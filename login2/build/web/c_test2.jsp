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
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
 String u=request.getParameter("option");
 String q1=(String)session.getAttribute( "q" );
 Integer score=(Integer)session.getAttribute( "corrc" );
String ans1=(String)session.getAttribute( "ans" );
int ans2=Integer.parseInt(ans1);
int ans3=Integer.parseInt(u);

if(u.equals(ans1))
{
  score = new Integer(score.intValue()+1);  
}
else
{
     
     Statement st2=conn.createStatement();
    
   ResultSet rs=st2.executeQuery("select * from C_QUES where QUES='"+q1+"'");
   rs.next();
   String correctopt=rs.getString("ANSWER"+ans2);
   String ouropt=rs.getString("ANSWER"+ans3);
   
   PreparedStatement ps=conn.prepareStatement("insert into WRONG_CQUES ( QUES, ANSWER, CORRECT,USERNAME ) values ( '"+q1+"', '"+ouropt+"', '"+correctopt+"','"+s+"')" );
     ps.executeUpdate();
    
   
    
}
session.setAttribute("corrc", score);
Integer quesno=(Integer)session.getAttribute( "vc" );
Integer totcques=(Integer)session.getAttribute( "tot" );
if(quesno.intValue()==totcques.intValue())
{%>
    <jsp:forward page="reportc.jsp"/>
    <%
}
else {%>
    <jsp:forward page="c_test1.jsp"/>
<%}

 


%>