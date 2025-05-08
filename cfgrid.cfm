<!---  
Author:Animesh Dutta (Ananya Birla)
--->  
<h2> Users List(bind component)</h2>

<!---The below query is used here for understanding purpose --->
<cfquery name="getUserDetails" datasource="phonebook">
			Select name,email,phonenumber,userCreatedOn from users order by '' asc
		</cfquery>
		<cfdump var="#queryConvertForGrid(getUserDetails,1,30)#">
		<cfdump var="#serializeJson(queryConvertForGrid(getUserDetails,1,30))#">
		<!--- 
		Returned Result of the above cfdump
		 --->
		<!--- 
{"QUERY":{"COLUMNS":["NAME","EMAIL","PHONENUMBER"],"DATA":[["Animesh","xyz@pqr.com",1234567890],["Hiranmayee Dutta","abc@efg.com",1122334455],["Animesh Dutta","123@xyz.com",1231231231],["Smile Baby","abcdefg@xyz.com",1234123412]]},"TOTALROWCOUNT":4}		
		 --->
 <cfset bindURL="cfc:user.getUserDetails({cfgridpage},{cfgridpagesize},{cfgridsortcolumn},{cfgridsortdirection})"> 
<cfform name="userform" method="post">
	<cfgrid name="usergrid" bind="#bindURL#" format="html" pagesize="3" width="600" colheaderbold="true">
		<cfgridcolumn name="name" header="Name" display="true">
		<cfgridcolumn name="email" header="Email" display="true">
		<cfgridcolumn name="phonenumber" header="Phone Number" display="true">
		<cfgridcolumn name="USERCREATEDON" mask="DD/MM/YYYY" header="User Created On" display="true" width="300">
	</cfgrid>
</cfform> 
</cfform> 
