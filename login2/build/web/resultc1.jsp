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
			<li class="current_page_item"><span>YOUR C EXAM REPORT :)</span></a></li>
			<li class="current_page_item"><a href="userhome.jsp"><span>HOME</span></a></li>
			
			
			
			
		</ul>
		
	</div>
	<!-- end #menu -->
	<div id="splash">

    
    

    
    
    
  

    


</div>
	<div id="page">
	<%
    //Integer cscore=(Integer)session.getAttribute( "corrc" );
    //Integer totc11 =(Integer)session.getAttribute( "tot" );
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    Statement st=conn.createStatement();
	Statement st1=conn.createStatement();
    
    
    ResultSet rs=st.executeQuery("select * from WRONG_CQUES where USERNAME='"+s+"'");
	
ResultSet rs1=st1.executeQuery("select * from USERTABLE where USERNAME='"+s+"'");
rs1.next();

String mrks=rs1.getString(8);




	%>
	<table border="2">
    <tr><th>WRONG QUESTION</th><th>YOUR ANSWER</th><th>CORRECT ANSWER</th><th>TESTDATE</th></tr>
	<%
    
while(rs.next())
{//for(int i=1;i<=5;i++)
%>

    <tr><td><%out.println(rs.getString(1)+"<br>");%></td>
    <td><%out.println(rs.getString(2)+"<br> ");%></td>
    <td><%out.println(rs.getString(3)+"<br> ");%></td>
	<td><%out.println(rs1.getString(6)+"<br>");%></td></tr>
    
  
    
    <%
}
%>
</table>  
<br>
<h1><%out.println("YOUR SCORE IS :"+mrks);%></h1>
    <%

%>    


	
  </div>
  </div>
        <div id="footer">
	<p>developed by ANKUR SHISHODIA.</p>
</div>
  
  

</body>
</html>
