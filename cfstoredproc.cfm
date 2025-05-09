 <!---
Author:Animesh Dutta (Ananya Birla)
--->
Connecting to database stored procedure<br/>
---<br/>
 
1. Datasource name::phonebook<br/>
2. Stored procedure name::getUser<br/>
3. Parameter for the stored procedure::1234567890<br/>
4. Two result sets<br/>
5.Two different ways of calling stored procedure<br/>

---<br/>
<!--- First way of calling sp--->
<cfstoredproc datasource="phonebook" procedure="getUser">
	<cfprocparam type="IN" cfsqltype="cf_SQL_decimal" value="1234567890">
	<!--- <cfprocparam type="OUT" cfsqltype="cf_SQL_VARCHAR" variable="userdisplay"> --->
	<cfprocresult resultset="1" name="user">
	<cfprocresult resultset="2" name="userdetails">
</cfstoredproc>
<!--- Second way of calling sp.It will return the first result set if there are multiple --->
<cfquery name="get_user" datasource="phonebook">
	{CALL getUser(1234567890)}
</cfquery>
Execution time in milliseconds<br/>
<cfdump var="#get_user#" label="sp_CALL">
<cfdump var="#cfstoredproc#" label="storedprocedure"><br/>
<cfdump var="#user#" label="Basic user information"><br/>
<cfdump var="#userdetails#" label="User's Personal Information">
