<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*,java.util.Vector,java.util.StringTokenizer" %>
<%String UserID=(String)session.getAttribute("UserID");
	String LocationName = (String)request.getParameter("LocationName");
	session.setAttribute("LocationName",LocationName);

%>
<HTML>
<head>
		<LINK href="styles.css" type="text/css" rel="stylesheet">
		<script src="calender.js" type="text/javascript"></script>
		<script src="validate.js" type="text/javascript"></script>
		<script src="AjaxCall.js" type="text/javascript"></script>

<script type="text/javascript">
		function ChkMandatoryField(F,T){
			var val= F.value;
			if(val==""){alert(T+" is mandatory");return false;}
			}
		function validate()
		{		var frm = document.forms(0);
			    if(ChkMandatoryField(frm.LocationName,'Location Name')==false) return false;
			    if(ChkMandatoryField(frm.ResortImage,'Resort Image')==false) return false;
			   if(ChkMandatoryField(frm.NoOfRooms,'NoOfRooms')==false) return false;
			   if(ChkMandatoryField(frm.NoOfRoomsAvailable,'NoOfRoomsAvailable')==false) return false;
			   if(ChkMandatoryField(frm.Restaurant,'Restaurant')==false) return false;
			   if(ChkMandatoryField(frm.Swimmingpool,'Swimmingpool')==false) return false;
			    if(ChkMandatoryField(frm.GamesRoom,'GamesRoom')==false) return false;
			    if(ChkMandatoryField(frm.Casino,'Casino')==false) return false;
			    if(ChkMandatoryField(frm.YogaandMeditation,'Yoga&Meditation')==false) return false;
			    if(ChkMandatoryField(frm.SteamBath,'SteamBath')==false) return false;
			    if(ChkMandatoryField(frm.GymandHealthCenter,'Gym&HealthCenter')==false) return false;


			  
		}
		function fnUpload()
	{
		var userid = document.forms(0).userid;
		fnEmpPopUp('UploadPhoto1.jsp?userid='+userid,80,400);
	}

</script>

<BODY  Class="SC">
<h3 align=center>Add New Resort</h3>
<table align=right>
<table align=right>
<TD><A HREF="ViewResorts0.jsp" target="RFrame"><img border="0" name="ViewResorts" src="Images/ResortsDetails0.jpg" onmouseover="document['ViewResorts'].src='Images/ResortsDetails1.jpg'" onmouseout="document['ViewResorts'].src='Images/ResortsDetails0.jpg'" ></A></TD>
</table>

<FORM NAME="Resorts" ACTION="AddResorts2.jsp" OnSubmit="return validate()">
	
 <center>
 <TABLE width="40%" align=center>
		<TR class="row_title">
		  <TH align="center" colspan=2><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>Add New Resort</FONT></TH>
		</TR>
		<Input type=hidden name=UserID value='<%=UserID%>'>
		<tr class=row_even>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>Location Name </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD><Input type=text name='LocationName' value='<%=LocationName%>'></TD></tr>
		  <tr class=row_odd>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>Resort Image </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD >		 
		<div id="infodiv"></div><Input type="text" name='PhotoPath' ><INPUT id="FUBtn" name="FUBtn" class= "UploadButton" TYPE="Button" value='Attach Photo' onclick="fnUpload()" class="UploadButton"><br>
		</TR>
		<tr class=row_even>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>NoOfRooms  </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD ><Input type=text name='NoOfRooms' value=''></TD></tr>
		<tr class=row_odd>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>Restaurant  </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD><select name="Restaurant" style="font-size:12pt;height:30px;width:250px;">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
				</select></TD></tr>
		<tr class=row_even>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>Swimming pool  </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD><select name="Swimmingpool" style="font-size:12pt;height:30px;width:250px;">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
				</select></TD></tr>
		<tr class=row_odd>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>Games Room  </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD><select name="GamesRoom" style="font-size:12pt;height:30px;width:250px;">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
				</select></TD></tr>
		<tr class=row_even>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>Casino  </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD><select name="Casino" style="font-size:12pt;height:30px;width:250px;">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
				</select></TD></tr>
		<tr class=row_odd>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>Yoga & Meditation  </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD><select name="YogaandMeditation" style="font-size:12pt;height:30px;width:250px;">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
				</select></TD></tr>
		<tr class=row_even>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>SteamBath  </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD><select name="SteamBath" style="font-size:12pt;height:30px;width:250px;">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
				</select></TD></tr>
		<tr class=row_odd>
		  <TD align="left"><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>Gym & Health Center  </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD><select name="GymandHealthCenter" style="font-size:12pt;height:30px;width:250px;">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
				</select></TD></tr>
		
		 
		
  		  <tr class=row_even>
		<TH  ><INPUT TYPE="submit" value='AddResort'></TH>
		<TH  ><INPUT TYPE="reset" value='Clear' ></TH></TR>
		</TABLE>
</FORM>
</BODY>
</HEAD>
</HTML>