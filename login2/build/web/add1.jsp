<%@page import="java.sql.*"%>
<%
String lan=request.getParameter("lang");    
String q=request.getParameter("ques");
String o1=request.getParameter("o1");
String o2=request.getParameter("o2");
String o3=request.getParameter("o3");
String o4=request.getParameter("o4");
String cor=request.getParameter("corr");    
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    if(lan.equals("C") || lan.equals("c") )
    {    
    PreparedStatement ps=conn.prepareStatement("insert into C_QUES ( QUES, ANSWER1, ANSWER2, ANSWER3, ANSWER4, CORRECT ) values ( '"+q+"', '"+o1+"', '"+o2+"', '"+o3+"', '"+o4+"', '"+cor+"')" );
    
    
    ps.executeUpdate();
    }
    else if(lan.equals("java") || lan.equals("JAVA") )
    {    
    PreparedStatement ps=conn.prepareStatement("insert into JAVA_QUES ( QUES, ANSWER1, ANSWER2, ANSWER3, ANSWER4, CORRECT ) values ( '"+q+"', '"+o1+"', '"+o2+"', '"+o3+"', '"+o4+"', '"+cor+"')" );
    
    
    ps.executeUpdate();
    }
    
%>
<jsp:forward page="adminhome.jsp"/>