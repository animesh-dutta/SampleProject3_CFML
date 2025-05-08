<!---
Author:Animesh Dutta (Ananya Birla) 
--->  
<cfquery name="getUserDetails" datasource="phonebook">
	Select name,email,phonenumber from users
	<cfif gridsortcolumn neq "" and gridsortdirection neq "">
		order by #gridsortcolumn# #gridsortdirection#
	</cfif> 
</cfquery> 
<!--- 
serializeQueryByColumns should be false.But by default it is false.
 --->
	<cfoutput> 
		#serializeJSON(queryConvertForGrid(getUserDetails,page,pagesize),false)#
	</cfoutput>
