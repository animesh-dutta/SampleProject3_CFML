<!---
Author:Animesh Dutta (Ananya Birla)
---> 
<cfquery name="getUsers" datasource="phonebook">
	Select phonenumber as MobileNumber,name,email,employeeid,usercreatedon from Users
</cfquery>
<cfdump var="#getUsers#">
<!--- 
<cfdump var="#getUsers#">
<cfoutput query="getUsers">
	#getUsers["name"][5]#
</cfoutput>
 ---> 
<style>
	.evenRow{
	background-color:silver;
	}
</style>
<cfset metaDataArray=getMetaData(getUsers)>
<cfdump var="#metaDataArray()#">
<cfset colList="">
<cfloop from=1 to="#arrayLen(metaDataArray)#" index="i">
	<cfset colList=listAppend(colList,metaDataArray[i].name)>
</cfloop>
<cfoutput query="getUsers">
	<cfif BitAnd(#currentRow#,1)>
		<div>
	<cfelse>
		<div class="evenRow">
	</cfif>  
	<!--- <cfif #currentRow# mod 2 neq 0>
		<div>
	<cfelse>
		<div class="evenRow">
	</cfif> ---> 
	<!---  <div class="#IIF(currentrow mod 2 neq 0,de(""),de("evenRow"))#">  --->
		#currentrow#)
		<cfloop index="col" list="#colList#">
				#col#=#getUsers[col][currentrow]#,
		</cfloop>
	</div>
</cfoutput>
