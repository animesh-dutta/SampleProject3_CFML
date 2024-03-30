<!--- 
ColdFusion Web service
 --->
 <cfcomponent hint="Authentication webservice">
 	<!--- 
 	<cffunction name="getUserDetails" access="remote" returntype="Any">
 	 		<cfargument name="token">
 	 		<cfargument name="username">
 	 		<cfscript>
 	 			userDetails={};
 	 			userDetails.username=arguments.username;
 	 			userDetails.password="duttasoft";
 	 		</cfscript>
 	 		<cfreturn userDetails>
 	 	</cffunction> --->
 		
 		<cffunction name="getUsers" access="remote" returntype="any">
 			
 			<cfquery name="users" datasource="phonebook">
 				select * from users
 			</cfquery>
 			<cfsavecontent variable="contacts">
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
 			</cfsavecontent>
 			<cfreturn contacts/>
 		</cffunction>

 </cfcomponent>
