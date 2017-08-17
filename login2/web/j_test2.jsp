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
 String u1=request.getParameter("option");
 String q11=(String)session.getAttribute( "qj" );
 Integer score=(Integer)session.getAttribute( "corrj" );
String ans11=(String)session.getAttribute( "ansj" );
int ansj2=Integer.parseInt(ans11);
int ansj3=Integer.parseInt(u1);
if(u1.equals(ans11))
{
  score = new Integer(score.intValue()+1);  
}
else
{
     Statement st3=conn.createStatement();
    
   ResultSet rs=st3.executeQuery("select * from JAVA_QUES where QUES='"+q11+"'");
   rs.next();
   String correctoptj=rs.getString("ANSWER"+ansj2);
   String ouroptj=rs.getString("ANSWER"+ansj3);
   
     PreparedStatement ps=conn.prepareStatement("insert into WRONG_JQUES ( QUES, ANSWER, CORRECT,USERNAME ) values ( '"+q11+"', '"+ouroptj+"', '"+correctoptj+"','"+s+"')" );
    
    
    ps.executeUpdate();
    
}
session.setAttribute("corrj", score);
Integer quesno=(Integer)session.getAttribute( "vj" );
Integer totjques=(Integer)session.getAttribute( "totj" );
if(quesno.intValue()==totjques.intValue())
{%>
    <jsp:forward page="reportj.jsp"/>
    <%
}
else {%>
    <jsp:forward page="j_test1.jsp"/>
<%

 }


%>