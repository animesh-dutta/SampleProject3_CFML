<!--- Author:Animesh Dutta (Ananya Birla) --->  
<!--- Child1 component(sub component) --->
<cfset oopsChild1Obj=createObject("component","oopschild1").init(name='Animesh Dutta',City='A,B,C')>
<!---  --->
<cfset oopsChild2Obj=createObject("component","oopschild2")>

<!--- Immediate Parent component --->
<!--- 

Here we are using Single label inheritance

1)oopschild1->oopsParent->oopsParentParent
2)oopschild2->oopsParent->oopsParentParent
 Note:The super key word can be used to use the immediate parent function or variable
 --->

<cfset oopsParentObj=createObject("component","oopsParent")>


<cfset oopsParentParentObj=createObject("component","oopsParentParent")>

<cfdump var="#oopsChild1Obj#" label="Child1">

<cfdump var="#oopsChild2Obj#" label="Child2">

<cfdump var="#oopsParentObj#" label="Parent">

<cfdump var="#oopsParentParentObj#" label="Parent Parent">
<!--- <cfdump var="#oopsObj.pri()#"> --->
<cfdump var="#oopsChild1Obj.pub()#"> 
<!--- The pac method can not be accessed from other folder --->
<!--- <cfdump var="#oopsObj.pac()#"> --->
<cfdump var="#oopsChild1Obj.rem()#">
<cfdump var="#oopsChild1Obj.getName()#">
<cfdump var="#oopsChild1Obj.getCity()#"><br/>
<!--- child1 --->
<cfdump var="#oopsChild1Obj.getParent()#" label="child 1"><br/>
<!--- child 2 --->
<cfdump var="#oopsChild2Obj.getParent()#" label="child 2"><br/>
<!--- Immediate Parent --->
<cfdump var="#oopsParentObj.getParent()#" label="parent"><br/>

<cfdump var="#oopsParentParentObj.getParent()#" label="parent Parent">

<!--- <cfobject component="components.oops" name="testComp" >
<cfdump var="#testComp#">
<cfinvoke component="components.oops" method="getName" returnvariable="getVar" >
	<cfinvokeargument name="name" value="Ani">
</cfinvoke>
<cfdump var="#getVar#"> --->
