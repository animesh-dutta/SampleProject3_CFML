<!--- 
Author:Animesh Dutta (Ananya Birla) 
Object Oriented ColdFusion
1)Data encapsulation(creating component and inside that creating variables and functions as single unit)
2)Data hiding using private access specifier.Default access specifier is public
3)Creating Objects
4)Inheritance 
 --->

<cfcomponent output="false">
	<cffunction name="getParent" access="public">
		<cfreturn "Parent2">
	</cffunction>
</cfcomponent>
