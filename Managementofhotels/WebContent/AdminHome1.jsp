<HTML>

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>

<%@ page session="true" %>
<%String UserID=(String)session.getAttribute("UserID");%>
		
<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
	
		<script src="validate.js" type="text/javascript"></script>
		<script src="AjaxCall.js" type="text/javascript"></script>

<head>
<body Class='SC'>
<Form name =UserProfile>
	<fieldset style="padding: 3; width=15;height=200">
 <legend align="center"><FONT COLOR="#800040" Face='verdana' size='4'><B>Admin Home</B></FONT></Legend>

	<TABLE align=right>
		<tr><TD><A HREF="ViewMembers.jsp" target="ResFrame"><FONT COLOR="#028BDC" Face='verdana' size='4'><B>Members</B></FONT></A></TD>
                </tr><td></td><td></td>
		<tr><TD><A HREF="ViewBlockedMembers.jsp" target="ResFrame"><FONT COLOR="#028BDC" Face='verdana' size='4'><B>Blocked Members</B></FONT></A></TD>
                </tr><td></td><td></td>
				<tr><TD><A HREF="ApproveMembers.jsp" target="ResFrame"><FONT COLOR="#028BDC" Face='verdana' size='4'><B>Approve</B></FONT></A></TD>
                </tr><td></td><td></td>

		<tr><TD><A HREF="UserBookings0.jsp" target="ResFrame"><FONT COLOR="#028BDC" Face='verdana' size='4'><B>UserBookings</B></FONT></A></TD>
                </tr><td></td><td></td>
		<tr><TD><A HREF="SendInvite0.jsp" target="ResFrame"><FONT COLOR="#028BDC" Face='verdana' size='4'><B>Invite a Guest</B></FONT></A></TD>
                </tr><td></td><td></td>
<tr><TD><A HREF="AddUser.jsp" target="ResFrame"><FONT COLOR="#028BDC" Face='verdana' size='4'><B>Add AdminUser</B></FONT></A></TD>
                </tr><td></td><td></td>

		<tr><TD><A HREF="ChangePassword1.jsp" target="ResFrame"><FONT COLOR="#028BDC" Face='verdana' size='4'><B>Change Password</B></FONT></A></TD>		
		</tr><br><td></td><td></td>
		<tr><TD><A HREF="Logout.jsp" target="BodyFrame"><FONT COLOR="#028BDC" Face='verdana' size='4'><B>LogOut</B></FONT></A></TD>
                </tr><td></td><td></td>
	
	</fieldSet>
	</TABLE>
	

</Form>
</BODY>
</HTML>
