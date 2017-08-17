<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%String lan=request.getParameter("lang");  %>
<head>

   

<link href="stylenew1.css" rel="stylesheet" type="text/css" media="screen" />

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
			<li class="current_page_item"><span><%out.println(lan+" ");%>PAPER :)</span></a></li>
			<li class="current_page_item"><a href="adminhome.jsp"><span>HOME</span></a></li>
			
			
			
			
		</ul>
		
	</div>
	<!-- end #menu -->
	<div id="splash">

    
    

    
    
    
  

    


</div>
	<div id="page">
            <%
  



   
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    if(lan.equals("C") || lan.equals("c") )
    {    
    Statement st=conn.createStatement();
    
    
    ResultSet rs=st.executeQuery("select * from C_QUES");
    int i=0;
while(rs.next())
{//for(int i=1;i<=5;i++)
    i=i+1;
    out.println("Q"+i+"."+rs.getString(1)+"<br>");
    out.println("1."+rs.getString(2)+"<br> ");
    out.println("2."+rs.getString(3)+"<br> ");
    out.println("3."+rs.getString(4)+"<br> ");
    out.println("4."+rs.getString(5)+"<br> ");
    out.println(" CORRECT-"+rs.getString(6)+"<br> ");
    %>
    <hr>
    <%
}
    }
    else if(lan.equals("java") || lan.equals("JAVA") )
    {    
    Statement st=conn.createStatement();
    
    
    ResultSet rs=st.executeQuery("select * from JAVA_QUES");
    int i=0;
while(rs.next())
{//for(int i=1;i<=5;i++)
    i=i+1;
    out.println("<b>Q</b>"+i+"."+rs.getString(1)+"<br>");
    out.println("1."+rs.getString(2)+"<br> ");
    out.println("2."+rs.getString(3)+"<br> ");
    out.println("3."+rs.getString(4)+"<br> ");
    out.println("4."+rs.getString(5)+"<br> ");
    out.println(" CORRECT-"+rs.getString(6)+"<br> ");
    %>
    <hr>
    <%
    }
    
}  
%>

	
  </div>
  </div>
        <div id="footer">
	<p>developed by ANKUR SHISHODIA.</p>
</div>
  
  

</body>
</html>
