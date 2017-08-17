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
out.println(d);
%>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<u><a href="logout.jsp">LOGOUT</a></u>
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu-wrapper">
		<ul id="menu">
			<li class="current_page_item"><a href="c_test.jsp"><span>ATTEMPT C/C++ QUIZ</span></a></li>
			<li class="current_page_item"><a href="j_test.jsp"><span>ATTEMPT JAVA QUIZ</span></a></li>
                        <li class="current_page_item"><a href="resultc1.jsp"><span>VIEW C REPORT</span></a></li>
                        <li class="current_page_item"><a href="resultj1.jsp"><span>VIEW JAVA REPORT</span></a></li>
			
			
			
			
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
