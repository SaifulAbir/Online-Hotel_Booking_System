<!--
	File : Logout.jsp
	

-->
<html>
<%@ page language="java" %>
<%@ page session="true" %>
<%@page import="java.sql.*,java.io.*,java.util.Random"%>
<%
	session.removeAttribute("UserID");
	session.removeAttribute("connection");
	session.removeAttribute("auth");
	session.invalidate();
	System.out.println("After Lout-->");
	
%>
<Head>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<body Class="SC">
<script>
	alert("Logged out successfully"); 
	
</script>
<br><br>
<P align=center><FONT SIZE="6" COLOR="#AA2504" face='monotype corsiva'> 
Thanks for choosing Live Destination </Font></P>
<P align=center size="5"><a href="Login.jsp"><font size="4">Click Here</font></a> to Login again</P>
</body>
</html>