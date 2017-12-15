<cfcomponent output="false" extends="components.oopsParentParent">

	<!--- 
	When we are making the getParent() function as private the extended function will be accessed in the calling view page
	 --->
	<cffunction name="getParent" access="private">
		<cfset parentparent=super.getParent()>
		<cfset parent=#parentparent# & "parent1">
		<cfreturn parent>
	</cffunction>
</cfcomponent>