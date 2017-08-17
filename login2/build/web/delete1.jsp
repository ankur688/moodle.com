<%@page import="java.sql.*"%>
<%
String lan=request.getParameter("lang");    
String no=request.getParameter("quesno");



   
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    if(lan.equals("C") || lan.equals("c") )
    {    
    PreparedStatement ps=conn.prepareStatement("delete from C_QUES where QUES='"+no+"'" );
    
    
    ps.executeUpdate();
    }
    else if(lan.equals("java") || lan.equals("JAVA") )
    {    
    PreparedStatement ps=conn.prepareStatement("delete from JAVA_QUES where QUES='"+no+"'" );
    
    
    ps.executeUpdate();
    }
    
    
%>
<jsp:forward page="adminhome.jsp"/>