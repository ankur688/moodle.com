<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
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
			<li class="current_page_item"><span>YOUR EXAM REPORT :)</span></a></li>
			<li class="current_page_item"><a href="userhome.jsp"><span>HOME</span></a></li>
			
			
			
			
		</ul>
		
	</div>
	<!-- end #menu -->
	<div id="splash">

    
    

    
    
    
  

    


</div>
	<div id="page">
	<%
    Integer jscore=(Integer)session.getAttribute( "corrj" );
    Integer totj11 =(Integer)session.getAttribute( "totj" );
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    Statement st1=conn1.createStatement();
    
    
    ResultSet rs1=st1.executeQuery("select * from WRONG_JQUES where USERNAME='"+s+"'");
	%>
	<table border="2">
    <tr><th>WRONG QUESTION</th><th>YOUR ANSWER</th><th>CORRECT ANSWER</th></tr>
	<%
    
while(rs1.next())
{//for(int i=1;i<=5;i++)
%>

    <tr><td><%out.println(rs1.getString(1)+"<br>");%></td>
    <td><%out.println(rs1.getString(2)+"<br> ");%></td>
    <td><%out.println(rs1.getString(3)+"<br> ");%></td></tr>
    
   
    
    <%
}
%>
</table> 

<h1><%out.println("YOUR SCORE IS :"+jscore.intValue()+"/"+totj11.intValue());%></h1>
    <%
PreparedStatement ps=conn1.prepareStatement("update USERTABLE set J_TESTDATE='"+d+"',J_MARKS='"+jscore+"' where USERNAME='"+s+"'" );
    
    
    ps.executeUpdate();
%>    

  </div>
  </div>
        <div id="footer">
	<p>developed by ANKUR SHISHODIA.</p>
</div>
  
  

</body>
</html>
