<!--- 
Author:Animesh Dutta (Ananya Birla)
 cfpagination.cfm
 --->  
<cfparam name="MaxRows" default="5">
<cfparam name="StartRow" default="1">

<cfquery name="userTest" datasource="phonebook">
  select * from users
</cfquery>
<table cellpadding="1" cellspacing="1">
    <tr>
        <td bgcolor="f0f0f0">
            &nbsp;
        </td>
        <td bgcolor="f0f0f0">
            <b><i>Name</i></b>
        </td>
        <td bgcolor="f0f0f0">
            <b><i>Email</i></b>
        </td>
        <td bgcolor="f0f0f0">
            <b><i>Phone Number</i></b>
        </td>
        <td bgcolor="f0f0f0">
            <b><i>Employee  Id</i></b>
        </td>
    </tr>
<!--- Output the query and define the startrow and maxrows parameters. 
Use the query variable CurrentCount to keep track of the row you are displaying. ------>
<cfif isNumeric("#StartRow#")>
	<!--- 
	Start row decides from where the data should be displayed.
	 --->
<cfoutput query="userTest" startrow="#StartRow#" maxrows="#MaxRows#">
    <tr>
        <td valign="top" bgcolor="ffffed">
            <b>#userTest.CurrentRow#</b>
        </td>
        <td valign="top">
            <font size="-1">#name#</font>
        </td>
        <td valign="top">
            <font size="-1">#email#</font>
        </td>
        <td valign="top">
            <font size="-1">#phonenumber#</font>
        </td>
        <td valign="top">
            <font size="-1">#employeeid#</font>
        </td>
    </tr>
</cfoutput>
    <tr>
        <td colspan="4">
	<cfoutput>
        <cfif (StartRow + MaxRows) LTE userTest.RecordCount and StartRow lt 6 and isNumeric("#StartRow#")>
		
		<a href="#CGI.SCRIPT_NAME#?startrow=#Evaluate(StartRow + MaxRows)#">NEXT</a>
		
	    
	<cfelseif (StartRow + MaxRows) lte userTest.RecordCount and isNumeric("#StartRow#")>
		<a href="#CGI.SCRIPT_NAME#?startrow=#Evaluate(StartRow - MaxRows)#">BACK</a>
 
		<a href="#CGI.SCRIPT_NAME#?startrow=#Evaluate(StartRow + MaxRows)#">NEXT</a>
	<cfelseif (StartRow + MaxRows) gte userTest.RecordCount  and isNumeric("#StartRow#")>
		
		<a href="#CGI.SCRIPT_NAME#?startrow=#Evaluate(StartRow - MaxRows)#">BACK</a>
	<cfelse>
		You are not allowed to access this page.
		
        </cfif>
	</cfoutput>
        </td>
    </tr>
	
<cfelse>
	You are not allowed to access this page.---
</cfif>
 
</table> 

<cfdbinfo datasource="phonebook" name="testname" type="dbnames">

<cfdump var="#testname#">
