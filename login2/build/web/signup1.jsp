<%@page import="java.sql.*"%>
<%
    String u=request.getParameter("user");
    String p=request.getParameter("pass");
    String mob=request.getParameter("mob");
    String mail=request.getParameter("mail");
    String city=request.getParameter("city");
    
    
    
        
    session.setAttribute("username",u);
    session.setAttribute("password",p);
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    PreparedStatement ps=conn.prepareStatement("insert into USERTABLE ( username, password, mobile, email, city ) values ( '"+u+"', '"+p+"', '"+mob+"', '"+mail+"', '"+city+"')" );
    
    ps.executeUpdate();
    
    %>
    <jsp:forward page="index.html"/>
      

    


    