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
			<li class="current_page_item"><span>ADD NEW QUESTION :)</span></a></li>
			
			
			
			
		</ul>
		
	</div>
	<!-- end #menu -->
	<div id="splash">
           
    
    

    
    
    
  

    


</div>
	<div id="page">
             
	<form action="add1.jsp" method="post">
            
   <input type="text" placeholder="LANGUAGE" name="lang"/><br>
      <input type="text" placeholder="QUESTION" name="ques"/><br>
	  <input type="text" placeholder="OPTION 1" name="o1"><br>
    <input type="text" placeholder="OPTION 2" name="o2"><br>
    <input type="text" placeholder="OPTION 3" name="o3"><br>
    <input type="text" placeholder="OPTION 4" name="o4"><br>
    <input type="text" placeholder="CORRECT" name="corr"><br>
    <input type="submit" value="ADD QUESTION"><br>

    </form>
                

            
		
	
</div>
        <div id="footer">
	<p>developed by ANKUR SHISHODIA.</p>
</div>

</body>
</html>
