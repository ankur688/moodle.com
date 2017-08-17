<%@page import="java.sql.*"%>

<%
String nam=request.getParameter("usr");


Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    
        
    Statement st=conn.createStatement();
    
        
    st.executeUpdate("delete from USERTABLE where USERNAME='"+nam+"'");
    
     
    %>
    
    <%
    
   
%>
<jsp:forward page="adminhome.jsp"/>
