<!--- Author:Animesh Dutta (Ananya Birla) ---> 
<cfcomponent output="false" extends="components.oopsParent"> 
	<cffunction name="getParent" access="public">
		<cfset par=super.getParent()>
		<cfset child2=#par# & "child2">
		<cfreturn child2>
	</cffunction>
</cfcomponent>
