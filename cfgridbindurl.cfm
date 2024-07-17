<h2> Users List(bind URL)</h2>

		 <!--- 
		 This cfc calling has some issue to display the JSON data into browser with Application.cfc/Application.cfm
		  --->
		  <!--- 
		  You can try to put the files in coldfusion webroot.It will work out
		   --->
 <cfset bindURL="URL:userDetailsForGrid.cfm?page={cfgridpage}&pagesize={cfgridpagesize}&gridsortcolumn={cfgridsortcolumn}&gridsortdirection={cfgridsortdirection}"> 
<cfform name="userform" method="post">
	<!--- cfgrid format must be html here --->
	<cfgrid name="usergrid" bind="#bindURL#" format="html" pagesize="5" width="600" colheaderbold="true" appendkey="yes">
		<cfgridcolumn name="name" header="Name" display="true" href="" hrefkey="name">
		<cfgridcolumn name="email" header="Email" display="true">
		<cfgridcolumn name="phonenumber" header="Phone Number" display="true"> 
	</cfgrid>
</cfform>
