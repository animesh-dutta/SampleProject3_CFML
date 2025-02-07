<cfcomponent output="false" hint="user object"> 
	<!---  
	access must be remote
	 --->
	<cffunction name="getUserDetails" access="remote" output="false">
		<cfargument name="page">
		<cfargument name="pagesize">
		<cfargument name="gridsortcolumn" >
		<cfargument name="gridsortdir" >
		<cfset page=arguments.page/>
		<cfset pagesize=arguments.pagesize/>
		<cfset gridsortcolumn=arguments.gridsortcolumn/>
		<cfset gridsortdir=arguments.gridsortdir/>
		<cfquery name="getUserDetails" datasource="phonebook">
			Select name,email,phonenumber,userCreatedOn from users
			<cfif gridsortcolumn neq "" and gridsortdir neq "">
				order by #gridsortcolumn# #gridsortdir#
			</cfif>
		</cfquery>
		<cfreturn serializeJson(queryConvertForGrid(getUserDetails,page,pagesize),false)>
	</cffunction>
	<cffunction name="getUserJson" access="remote">
		<cfquery name="qry_getUserJson" datasource="phonebook" cachedwithin="#createTimeSpan(0,0,0,3)#">
			Select name,email from users
		</cfquery>
		<cfreturn serializeJSON(qry_getUserJson)>
	</cffunction>
	<cffunction name="getUserArray" access="remote">
		<cfargument name="searchValue" required="true">
	</cffunction>	
</cfcomponent> 
 
