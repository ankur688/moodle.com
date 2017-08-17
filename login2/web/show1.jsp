<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<html>
<head>

   

<link href="stylenew.css" rel="stylesheet" type="text/css" media="screen" />

</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1>moodle.</h1>
				<% 
String s=(String)session.getAttribute( "username" );
out.println( "welcome,"+s );
out.println("<br></br>");
Date d=new Date();
out.println(d);
%>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<u><a href="logout.jsp">LOGOUT</a></u>
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu-wrapper">
		<ul id="menu">
			<li class="current_page_item"><span>VIEW USERS :)</span></a></li>
			<li class="current_page_item"><a href="adminhome.jsp"><span>HOME</span></a></li>
			
			
			
			
		</ul>
		
	</div>
	<!-- end #menu -->
	<div id="splash">

    
    

    
    
    
  

    


</div>
	<div id="page">
	<%
String nam=request.getParameter("usr");
String all=request.getParameter("showall");


Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    
        
    Statement st=conn.createStatement();
    
    if(!(nam.isEmpty())) 
    {    
    ResultSet rs1=st.executeQuery("select * from USERTABLE where USERNAME='"+nam+"'");
    if(rs1.next())
{ %>
<table border="1">
<tr><th>NAME</th><th>MOBILE</th><th>EMAIL</th><th>CITY</th><th>C TESTDATE</th><th>Java testdate</th><th>C MARKS</th><th>JAVA MARKS</th></tr>
<%


    
    %>
	
	
	<tr><td><%out.println(rs1.getString(1)+" ");%></td>
    <td><%out.println(rs1.getInt(3)+" ");%></td>
    <td><%out.println(rs1.getString(4)+" ");%></td>
    <td><%out.println(rs1.getString(5)+" ");%></td>
    <td><%out.println(rs1.getString(6)+" ");%></td>
    <td><%out.println(rs1.getString(7)+" ");%></td>
    <td><%out.println(rs1.getInt(8)+" ");%></td>
    <td><%out.println(rs1.getInt(9)+" ");%></td></tr>
    
    
	</table>
    
    <%
}
else
{
out.println("no user");
}
}
if (!(all==null))
{ //Statement st=conn.createStatement();
    
   ResultSet rs=st.executeQuery("select * from USERTABLE");
  %>  <table border="1">
<tr><th>NAME</th><th>MOBILE</th><th>EMAIL</th><th>CITY</th><th>C TESTDATE</th><th>Java testdate</th><th>C MARKS</th><th>JAVA MARKS</th></tr>
<%	while(rs.next())
{//for(int i=1;i<=5;i++)
  %>  
    <tr><td><%out.println(rs.getString(1)+" ");%></td>
    <td><%out.println(rs.getInt(3)+" ");%></td>
    <td><%out.println(rs.getString(4)+" ");%></td>
    <td><%out.println(rs.getString(5)+" ");%></td>
    <td><%out.println(rs.getString(6)+" ");%></td>
    <td><%out.println(rs.getString(7)+" ");%></td>
    <td><%out.println(rs.getInt(8)+" ");%></td>
    <td><%out.println(rs.getInt(9)+" ");%></td></tr>

    
    <%

}
%>
</table>
<%
}

    

%>


	
  </div>
  </div>
        <div id="footer">
	<p>developed by ANKUR SHISHODIA.</p>
</div>
  
  

</body>
</html>
