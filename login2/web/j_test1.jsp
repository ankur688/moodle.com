<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>

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
			<li class="current_page_item"><span>All the best :)</span></a></li>
			
			
			
			
		</ul>
		
	</div>
	<!-- end #menu -->
	<div id="splash"><%
	
	try{







Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ANKUR","ankur");
    
        
    Statement st=conn.createStatement();
    
Integer num=(Integer)session.getAttribute( "vj" );
Integer totj1 =(Integer)session.getAttribute( "totj" );



    int j=0;
    
    ResultSet rs=st.executeQuery("select * from JAVA_QUES");
    while(num.intValue()!=j)
    {    
   rs.next();
      j++;
    }
    if(rs.next() && j<(totj1.intValue()-1))
{//for(int i=1;i<=5;i++)
    j++;
    session.setAttribute("vj",j);
    out.println("Q"+j+"."+rs.getString(1)+" ");
   
    %>
    <form action="j_test2.jsp" method="post">
  <input type="radio" name="option" value="1" ><% out.println(rs.getString(2)+" "); %>
  <input type="radio" name="option" value="2"><% out.println(rs.getString(3)+" ");%><br>
  <input type="radio" name="option" value="3"><% out.println(rs.getString(4)+" ");%>
  <input type="radio" name="option" value="4"><% out.println(rs.getString(5)+" ");%><br>
  <input type="submit" value="next">
 </form>
    
    
    <hr>
    <%  String que=rs.getString(1);
        String correct=rs.getString(6);
        session.setAttribute("ansj",correct);
        session.setAttribute("qj",que);
}
else if(j== (totj1.intValue()-1))
{//for(int i=1;i<=5;i++)
    j++;
    session.setAttribute("vj",j);
    out.println(rs.getString(1)+" ");
   
    %>
    <form action="j_test2.jsp" method="post">
  <input type="radio" name="option" value="1" ><% out.println(rs.getString(2)+" "); %>
  <input type="radio" name="option" value="2"><% out.println(rs.getString(3)+" ");%><br>
  <input type="radio" name="option" value="3"><% out.println(rs.getString(4)+" ");%>
  <input type="radio" name="option" value="4"><% out.println(rs.getString(5)+" ");%><br>
  <input type="submit" value="submit">
 </form>
    
    
    <hr>
    <%  
        String que=rs.getString(1);
        String correct=rs.getString(6);
        session.setAttribute("ansj",correct);
        session.setAttribute("qj",que);
}}
catch (Throwable t)
{
out.println(t);
}
%></div>
	<div id="page">
		
	
</div>
<div id="footer">
	<p>developed by ANKUR SHISHODIA.</p>
</div>
<!-- end #footer -->
</body>
</html>
