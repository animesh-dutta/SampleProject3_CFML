<!--- Author:Animesh Dutta (Ananya Birla) --->
<cfcomponent output="false" extends="oopsParent">
	<!--- <cfscript>
	
	function A(){
		
	}
	
	</cfscript> --->
	<cfset this.Compname="oops">
	<cfset variables.name="Default">
	<cfset variables.country="USA">
	<cffunction name="init" access="public" returntype="any">
		<cfargument name="name" required="true">
		<cfargument name="city" required="true">
		<cfset variables.name=arguments.name>
		<cfset variables.city=arguments.city>
		<cfset setName(arguments.name)>
		<cfset setCity(arguments.city)>
		<cfreturn this>
	</cffunction>
	<cffunction name="pri" access="private" returntype="any">
		<cfreturn "pri">
	</cffunction>
	<cffunction name="pub" access="public" returntype="any">
		<cfreturn "pub">
	</cffunction>
	<cffunction name="rem" access="remote" returntype="any">
		<cfreturn "pro">
	</cffunction>
	<cffunction name="pac" access="package" returntype="any">
		<cfreturn "pac">
	</cffunction>
	<cffunction name="setCity" access="public" returntype="any">
		<cfargument name="city" required="true">
		<cfset variables.city=arguments.city>
	</cffunction>
	<cffunction name="getCity" access="public" returntype="any">
		<cfreturn variables.city>
	</cffunction>
	<cffunction name="setName" access="public" returntype="any">
		<cfargument name="name" required="true">
		<cfset variables.name=arguments.name>
	</cffunction>
	<cffunction name="getName" access="public" returntype="any">
		<cfreturn variables.name>
	</cffunction>
	<cffunction name="getParent" access="public">
		<!--- 
		Here we are getting the getParent() from oopsParent component and concatenating string in the child class
		 --->
		 <!--- 
		 Private functions can be accessed in the same component in other functions
		  --->
		<cfset var ret=super.getParent()>
		<cfset var oops=#ret# & "Child1">
		<cfset Var pri=pri()>
		<cfset var oops=#pri# & oops>
		<cfreturn oops>
	</cffunction>
	<!--- <cffunction name="getParent" access="remote">
		<cfargument name="param1">
		<!--- 
		Here we are getting the getParent() from oopsParent component and concatenating string in the child class
		 --->
		<cfset var ret=super.getParent()>
		<cfset var oops=#ret# & "Child1">
		<cfreturn oops>
	</cffunction> --->
</cfcomponent>
