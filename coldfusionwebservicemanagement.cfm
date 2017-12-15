<!--- 
<cfinvoke webservice="http://localhost:8500/coldfusionwebservice.cfc?wsdl" method="getUserDetails" returnvariable="userDetails">
	<cfinvokeargument name="token" value="asdf">
	<cfinvokeargument name="username" value="adutta">
</cfinvoke>
 --->
<!--- 
<cfinvoke webservice="http://localhost:8500/coldfusionwebservice.cfc?wsdl" method="getUsers" returnvariable="userDetails">
</cfinvoke> --->
<cfquery name="users" datasource="phonebook">
 				select * from users
 			</cfquery>
 			<cfxml variable="contacts">
 				<?xml version="1.0" encoding="UTF-8"?>
				<contactdetails>
					<cfloop query="users">
							<individual>
							<cfoutput>
								<phonenumber>
							         #users.phonenumber# 
								</phonenumber>
								<name>
							        #users.name#
								</name>
								<email>
							         #users.email#
								</email>
								<employeeid>
							         #users.employeeid#
								</employeeid>
						</cfoutput>
						</individual> 
					</cfloop>
				</contactdetails>
 			</cfxml>
 	
<!--- 
<cfset local={}>
<cfset local.isxml=isXml(contacts)>
<cfset xmlDocumentObject=xmlParse(local.isxml)>
<cfdump var="#local#"> --->
<cfdump var="#contacts#">
<cfset local={}>
<cfset local.JSONFormatData='{"ROWCOUNT":"","MESSAGE":"","DATA":""}'/>
<cfset local.jsonFeed.ROWCOUNT='{"ROWCOUNT":"","MESSAGE":"","DATA":"[]"}'/>
<cfdump var="#local#">