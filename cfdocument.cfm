
<cfchart name="chart" format="png">
	<cfchartseries type="pie">
		<cfchartdata item="IT" value="40">
		<cfchartdata item="Maketing" value="30">
		<cfchartdata item="Consultancy" value="20">
		<cfchartdata item="Education" value="10">
	</cfchartseries>
</cfchart>
<!--- The following example shows how to use the cfdocument scope variables to generate section numbers and page numbers. --->
<cfdocument format="pdf" >
	<!--- Header of the pdf document --->
	<cfdocumentitem type="header">
	    <table width="100%" border="0" cellpadding="0" cellspacing="0">
	        <tr>
				<td align="right">
					<cfoutput>#cfdocument.currentsectionpagenumber# of #cfdocument.totalsectionpagecount#</cfoutput>
				</td>
			</tr>
	    </table>
	</cfdocumentitem>
	<!--- Footer of the pdf document --->
	<cfdocumentitem type="footer">
	    <table width="100%" border="0" cellpadding="0" cellspacing="0">
	        <tr>
				<td align="center">
					<cfoutput>#cfdocument.currentpagenumber# of #cfdocument.totalpagecount#</cfoutput>
				</td>
			</tr>
	    </table>
	</cfdocumentitem>
	<!--- Document Sections --->
	<cfdocumentsection name="Section 1">
	    <h1>Section 1</h1>
	    	<cfimage action="writeToBrowser" source="#chart#">
	    	<cfloop index="i" from="1" to="30">
				I am in Section 1<br/><br/>
			</cfloop>
	</cfdocumentsection>
	
	<cfdocumentsection name="Section 2">
	    <h1>Section 2</h1>
	    <cfloop index="i" from="1" to="30">
				I am in Section 2<br/><br/>
			</cfloop>
	</cfdocumentsection>
	
	<cfdocumentsection name="Section 3">
	<h1>Section 3</h1>
	    <cfloop index="i" from="1" to="30">
				I am in Section 3<br/><br/>
			</cfloop>
	</cfdocumentsection>
</cfdocument>
