<!---
Author:Animesh Dutta (Ananya Birla)
--->
<cfset x=100000000>
<cfoutput>#DollarFormat(x)#</cfoutput>
<cfoutput>
    <p>The ceiling of 3.3 is #ceiling(3.3)#</p>
    <p>The ceiling of 3 is #ceiling(3)#</p>
    <p>The ceiling of 3.8 is #ceiling(3.8)#</p>
    <p>The ceiling of -4.2 is #ceiling(-4.2)#</p>
</cfoutput>
<h3>Round Example</h3>
<p>This function rounds a number to the closest integer.
<ul>
 <li>Round(7.49) : <cfoutput>#Round(7.49)#</cfoutput>
 <li>Round(7.5) : <cfoutput>#Round(7.5)#</cfoutput>
 <li>Round(-10.775) : <cfoutput>#Round(-10.775)#</cfoutput>
 <li>Round(-35.5) : <cfoutput>#Round(-35.5)#</cfoutput>
 <li>Round(35.5) : <cfoutput>#Round(35.5)#</cfoutput>
 <li>Round(1.2345*100)/100 : <cfoutput>#Round(1.2345*100)/100#</cfoutput>
</ul>
<h3>Fix Example</h3>
<p>Fix returns the closest integer less than the number if the number is
    greater than or equal to 0. Fix returns the closest integer greater than 
    the number if number is less than 0.</p>
<cfoutput>
<p>The fix of 3.4 is #Fix(3.4)#</p>
<p>The fix of 3 is #Fix(3)#</p>
<p>The fix of 3.8 is #Fix(3.8)#</p>
<p>The fix of -4.2 is #Fix(-4.2)#</p>
</cfoutput>
<h3>Int Example</h3>
<p>Int returns the closest integer smaller than a number.

<p>Int(11.7) : <cfoutput>#Int(11.7)#</cfoutput>
<p>Int(-11.7) : <cfoutput>#Int(-11.7)#</cfoutput>
<p>Int(0) : <cfoutput>#Int(0)#</cfoutput>
