<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*,java.util.Vector,java.util.StringTokenizer" %>
<%String UserID="";%>

<HTML>
<head>
		<LINK href="styles.css" type="text/css" rel="stylesheet">
		
		<script src="calender.js" type="text/javascript"></script>
		<script src="validate.js" type="text/javascript"></script>
		<script src="AjaxCall.js" type="text/javascript"></script>

<script type="text/javascript" >
		function ChkMandatoryField(F,T){
			var val= F.value;
			if(val==""){alert(T+" is mandatory");return false;}
		}
		function ChkNumField(F,T){
			var val = F.value;
			if(isNaN(val)==true||val==""){alert("Please enter numbers for "+T);return false;}
		}
		function DoPassWordValidation()
			{
			  var frm = document.forms(0);
			  if(frm.upassword.value != frm.retypepassword.value)
			  {
				alert('The Password and verified password does not match');
				frm.upassword.value='';
				frm.retypepassword.value='';
				return false;
			  }
			  else
			  {
				return true;
			  }
			}
		function ChkEmailField(F,T){
			var val = F.value;
			var pattern = /^[a-zA-Z0-9\_\.]+\@[a-zA-Z\.]+\.([a-z]{2,4})$/;
			if(!(pattern.test(val)==true)){alert("Please enter valid email for "+T);return false;}
		}
		function validate()
		{		var frm = document.forms(0);
				MemberFee();
			    if(ChkMandatoryField(frm.UserID,'User Id')==false) return false;
				var divObj = document.getElementById("nameid");
				var Msg = divObj.innerHTML;
				if(Msg.indexOf("not available")>-1){
					alert("User name not available. Please choose another");
					frm.UserID.value="";
				}
				//not available
				if(ChkMandatoryField(frm.upassword,'password')==false) return false;
			    if(ChkMandatoryField(frm.retypepassword,'Re type password')==false) return false;
			    if(DoPassWordValidation()==false) return false;
				if(ChkMandatoryField(frm.FirstName,'First Name')==false) return false;
			    if(ChkMandatoryField(frm.Age,'Age')==false) return false;
			    if(ChkNumField(frm.Age,'Age')==false) return false;

				if(ChkMandatoryField(frm.EmailAddress,'Email')==false) return false;
			    if(ChkEmailField(frm.EmailAddress,'Email')==false) return false;
				if(ChkMandatoryField(frm.Address,'Address')==false) return false;
			    if(ChkMandatoryField(frm.ContactNumber,'Contact Number')==false) return false;
			    if(ChkMandatoryField(frm.Occupation,'Occupation')==false) return false;
			    if(ChkMandatoryField(frm.MemberType,'Membership Type')==false) return false;
			   	if(ChkMandatoryField(frm.AmountDeposited,'AmountDeposited ')==false) return false;
				if(ChkMandatoryField(frm.cardnum,'cardnum')==false) return false;
				if(ChkMandatoryField(frm.pin,'pin')==false) return false;
				if(ChkNumField(frm.cardnum,'Credit Card Number')==false) return false;
		}
function MemberFee(){
			frm = document.forms(0);
			
			T= frm.MemberType.value;
			//alert(T);
			if(T=="Silver"){
			Amount=0;
			
			
			}else if(T=="Gold"){
				
			Amount=0;
			
			}else if(T=="Platinum"){
				
			Amount=0;
			
			
			}
			
			//alert(Amount);
			frm.AmountDeposited.value =Amount;
			
			
		}

function fnCallChkAvailability(U)
	{
		var UserID = U.value;
		var divObj = document.getElementById("nameid");
		URL = "ChkUser.jsp?UserID="+UserID;
		ajaxFunction(URL,divObj);
	}
	</script>
</head>
<BODY  Class="SC">
<h2 align=center>New User Registration</h2>
<table align=right>
<P align=right><A href="Login.jsp"><IMG SRC="Images/Login.jpg" WIDTH="110" HEIGHT="32" BORDER="0" ALT="" style="margin-right:15px;padding-right:15px;"></A>
<td><h4>If you are already a member</h4></td>
</table>
<FORM NAME="RegUser" ACTION="Register1.jsp" onsubmit="return validate();">
	
 <center>
 <TABLE width="50%" style="border-style:hidden;">
	
<TR class="row_title">
	<Td align=center> New User Details<BR></Td>
</TR>
		<TR class=row_even><TH align="left">Choose User Name
		<FONT COLOR="red">*</TH>
		<TD class=row_odd>&nbsp;&nbsp;<Input type=text name='UserID' value='' onchange='fnCallChkAvailability(this)' >
		<div id='nameid'></div>
		</TD>
		</TR>
		
		<TR class=row_even><TH align="left">Password
		<FONT COLOR="red">*</TH>
		<TD class=row_odd>&nbsp;&nbsp;<Input type='password' name='upassword'  value='' >
		</TR>

		<TR class=row_even><TH align="left">ReType Password
		<FONT COLOR="red">*</TH>
		<TD class=row_odd>&nbsp;&nbsp;<Input type='password' name='retypepassword'  value='' >
		</TR>

        <TR class=row_even><TH align="left">First Name
		<FONT COLOR="red">*</TH>
		<TD class=row_odd>&nbsp;&nbsp;<Input type="text"  name='FirstName' value='' >
		</TR>

		<TR class=row_even><TH align="left">Last Name</TH>
		<TD class=row_odd>&nbsp;&nbsp;<Input type="text"  name='LastName' value='' >
		</TR>

		<TR class=row_even><TH align="left">Age</TH>
		<TD class=row_odd>&nbsp;&nbsp;<Input type="text"  name='Age' value='' >
		</TR>
		<TR class=row_even><TH align="left">Email Address
		<FONT COLOR="red">*</TH>
		<TD class=row_odd>&nbsp;&nbsp;<Input type="text"  name='EmailAddress' value='' >
		</TR>
		
		<TR class=row_even><TH align="left">Address
		<FONT COLOR="red">*</TH>
		<TD class=row_odd>&nbsp;&nbsp;<textarea name="Address" ></textarea>
		</TR>
		<TR class=row_even><TH align="left">Contact Number
		<FONT COLOR="red">*</TH>
		<TD class=row_odd>&nbsp;&nbsp;<Input type="text"  name='ContactNumber' value='' >
		</TR>

		<TR class=row_even><TH align="left">Occupation
		<FONT COLOR="red">*</TH>
		<TD class=row_odd>&nbsp;&nbsp;<Input type="text"  name='Occupation' value='' >
		</TR>

		<TR class=row_even>
				<TH align="left">Member Type<FONT COLOR="red">*</FONT></TH>
				<TD class=row_odd>&nbsp;&nbsp;<select name=MemberType onchange='MemberFee()' style="font-size:12pt;height:30px;width:250px;">
				<option value="Silver" style="font-size:18pt;height:30px;width:250px;">Silver</option>
				<option value="Gold" style="font-size:18pt;height:30px;width:250px;">Gold</option>
				<option value="Platinum" style="font-size:18pt;height:30px;width:250px;">Platinum</option>
				</select><br><span style="color:red;">Get discount on membership.</span></TD>
		</TR>
	    <TR class=row_even><th></th>
		<TD class=row_odd align="" style="width:200px;">&nbsp;&nbsp;<input type="text"  name='AmountDeposited' value='' style="border:none;background-color:#C0C0C0;color:#C0C0C0;">
		<br>
		</TR>
	        <TR>
		<TH><INPUT TYPE="submit" value='Register' style="text-align:center;font-size:13pt;height:30px;width:89px;"></TH>
		<TH><INPUT TYPE="reset" value='Clear' style="text-align:center;font-size:13pt;height:30px;width:64px;"></TH></TR>
		</TABLE>
</FORM>

</BODY>
</HEAD>
</HTML>