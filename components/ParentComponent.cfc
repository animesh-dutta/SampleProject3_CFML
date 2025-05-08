<!--- Author:Animesh Dutta (Ananya Birla)  ---> 
<cfcomponent output="false">
	<cfset this.thisscopename="this scope value">
	<!--- Variables scope will not be avaiable out side the component and even in the child component --->
	<cfset variables.varibalesscopename="varibales scope value">
	<!--- default scope is variables scope --->
	<cfset noscope="no scope::default variables scope">
	<cffunction name="parentdisplay">
		<cfset var parentnamedisplay="Rabindra Nath Dutta">
		<cfreturn parentnamedisplay>
	</cffunction>
	<cffunction name="accessscope">
		<cfreturn variables.varibalesscopename>
	</cffunction>
	<!--- 
	The belw method is created for checking different access type in a function
	 --->
	 <!--- 
	 The below method will be available to the child component even if the access type is package and it is in another folder.
	  --->
	 <cffunction name="test" access="package">
		<cfreturn "test method">
	</cffunction>
	<cffunction name="onMissingMethod"> 
    	<cfargument name="missingMethodName" type="string"> 
    	<cfargument name="missingMethodArguments" type="struct"> 
        	
	</cffunction>
</cfcomponent>
