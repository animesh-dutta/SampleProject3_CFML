<!--- Author:Animesh Dutta (Ananya Birla) --->
<cfcomponent output="false" extends="components.ParentComponent">

	<cffunction name="childdisplay">
		<cfset var childnamedisplayName="Animesh Dutta">
		<cfreturn childnamedisplayName>
	</cffunction>
	<!--- This method will be called when the called method is missing --->
	<cffunction name="onMissingMethod"> 
    	<cfargument name="missingMethodName" type="string"> 
    	<cfargument name="missingMethodArguments" type="struct"> 
        	
	</cffunction>
</cfcomponent>
