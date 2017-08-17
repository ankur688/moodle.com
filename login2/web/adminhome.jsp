<%@page import="java.util.Date"%>
<head>

<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />

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
out.println(d+"<t><t><t><t>");
%>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<u><a href="logout.jsp">LOGOUT</a></u>
</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu-wrapper">
		<ul id="menu">
			<li class="current_page_item"><a href="add.jsp"><span>ADD QUESTION</span></a></li>
			<li class="current_page_item"><a href="delete.jsp"><span>DELETE QUESTION</span></a></li>
			<li class="current_page_item"><a href="view.jsp"><span>VIEW QUESTION PAPERS</span></a></li>
			<li class="current_page_item"><a href="show.jsp"><span>SHOW USER</span></a></li>
			<li class="current_page_item"><a href="remove.jsp"><span>REMOVE USER</span></a></li>
			
			
			
			
		</ul>
		
	</div>
	<!-- end #menu -->
	<div id="splash"><img src="programmer1.jpg" width="980" height="300" alt="" /></div>
	<div id="page">
		
	
</div>
<div id="footer">
	<p>developed by ANKUR SHISHODIA.</p>
</div>
<!-- end #footer -->
</body>
</html>
