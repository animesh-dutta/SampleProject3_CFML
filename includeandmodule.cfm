<!--- 
 Author:Animesh Dutta (Ananya Birla)
 cfinclude Vs cfmodule
 ---> 
<cfset name="Animesh Dutta">
<cfoutput>#name#</cfoutput><br/>
<cfset designation="ColdFusion Developer">
<!---The above values goes to the address.cfm page when we are using cfinclude tag --->
<!---<cfinclude template="/includes/address.cfm"> --->
<!---The above values does not go to the address.cfm page when using cfmodule --->
<!--- <cfmodule template="/includes/address.cfm"> --->
<cfoutput>#designation#</cfoutput>
