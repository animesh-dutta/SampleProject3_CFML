<!--- 
Author:Animesh Dutta (Ananya Birla)
 ---> 
<!--- 
	1.The below is excel report from html
--->
<!--- 
For downloading in a particular format,you have to the below two tags
 --->
<cfheader name="Content-Disposition" value="attachment; filename=cfcontenttest.xls"> --->
<cfcontent type="application/vnd.msexcel"> 
<!---  
<cfheader name="Content-Disposition" value="attachment; filename=cfcontenttest.doc">
<cfcontent type="application/msword"> 
 --->
<table border="15">
<tr><td>Month</td><td>Quantity</td><td>$ Sales</td></tr>
<tr><td>January</td><td>80</td><td >$245</td></tr>
<tr><td>February</td><td>100</td><td>$699</td></tr>
<tr><td>March</td><td>230</td><td >$2036</td></tr>
<tr><td>Total</td><td>=Sum(B2..B4)</td><td>=Sum(C2..C4)</td></tr>

<!--- <cfcontent type="text/html; charset=EUC-JP"> 
hello --->
