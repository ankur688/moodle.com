<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
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
<&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<u><a href="logout.jsp">LOGOUT</a></u>
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu-wrapper">
		<ul id="menu">
			<li class="current_page_item"><span>REMOVE USERS :)</span></a></li>
			<li class="current_page_item"><a href="adminhome.jsp"><span>HOME</span></a></li>
			
			
			
			
		</ul>
		
	</div>
	<!-- end #menu -->
	<div id="splash">

    
    

    
    
    
  

    


</div>
	<div id="page">
	<form action="remove1.jsp" method="post">
    
   <input type="text" Placeholder="USER TO REMOVE" name="usr"><br>
 
  <input type="submit" value="REMOVE USER">
</form>

	
  </div>
  </div>
        <div id="footer">
	<p>developed by ANKUR SHISHODIA.</p>
</div>
  
  

</body>
</html>
