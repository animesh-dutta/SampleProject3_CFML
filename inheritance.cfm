<!--- Author:Animesh Dutta --->
<!--- Creating object for ParentComponent --->

<cfset parentobject=createobject("component","components.ParentComponent")>

<!---  Creating object for ChildComponent--->
<cfset childobject=createobject("component","ChildComponent")>
<cfdump var="#parentobject#">
<cfdump var="#childobject#">
<!--- 
Testing the access specifiers in a function.
public,private,remote,package.It is defined in 'ParentComponent' component
 --->
<cfdump var="#childobject.test()#" label="test method in ParentComponent.Calling through child method"><br/>
<!--- Not able to get the called method as it is in diff folder and access type is package.But in case of inheritance it will work --->
<!---
<cfdump var="#parentobject.test()#" label="test method in ParentComponent.Calling through parent method"><br/>
--->
<!--- one function from the parent component --->
<cfdump var="#parentobject.parentdisplay()#"><br/>
<!--- one function from the child component --->
<cfdump var="#childobject.childdisplay()#"><br/>
<!--- This scope is like public,this scope variable can be accessed from out side the component --->
<cfdump var="#parentobject.thisscopename#"><br/>
<!--- variables scope variable can not be accessed from outside the component,it can be accessed by a function that is public --->
<cfdump var="#parentobject.accessscope()#"><br/>

<!--- child component extends parent component --->
<!---  child component will inherit properties and methods of parent component--->
....................................................<br/>
......INHERITANCE.......<br/>
<!--- child component function --->
<cfdump var="#childobject.childdisplay()#"><br/>
<!--- parent component properties --->
<cfdump var="#childobject.thisscopename#"><br/>

<!--- <cfdump var="#childobject.varibalesscopename#"><br/> --->

<!--- <cfdump var="#childobject.noscope#"><br/> --->

<cfdump var="#childobject.parentdisplay()#"><br/>


<cfdump var="#childobject.accessscope()#">

...............................
<cfobject component="ChildComponent" name="ccobject">
................................................
<cfinvoke component="ChildComponent" method="childdisplay" returnvariable="ccmethod">

<cfdump var="#ccmethod#">

>>>>>>>>>>>>>>><br/>

<cfif NOT IsDefined("URL.myID")>
    <!--- throw the error --->
</cfif>

___________________________________

If the access specifier in a function is package-we can access the function within the same package that is in Same folder
Access specifier-package test.In below case it will throw error,this is why I am commenting the code --<br/>
<!---
<cfset testObj=createObject("component","components.users")>
<cfdump var="#testObj.testFunction()#">
--->
