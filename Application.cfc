<!--- 
Author:Animesh Dutta
 --->

<cfcomponent displayname="Application" output="false">

	<!---
	PROPERTIES - APPLICATION SPECIFIC
	--->
	
	<cfset this.name = "AnimeshDutta" />
	<cfset this.loginStorage = "session" />
	<cfset this.sessionManagement = true />
	<cfset this.clientManagement = true />
	<cfset this.setClientCookies = true />
	<cfset this.setDomainCookies = false />
	<cfset this.sessionTimeOut = CreateTimeSpan(0,1,0,0) />
	<cfset this.applicationTimeOut = CreateTimeSpan(1,0,0,0) />
	
</cfcomponent>
