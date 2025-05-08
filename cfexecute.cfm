<!---
Author:Animesh Dutta (Ananya Birla)
cfexecute
--->
<!---
<cfexecute name = "C:\Windows\system32\netstat.exe"
    arguments = "-e" 
    outputFile = "C:\output\cfexecuteoutput.txt"
    timeout = "1">
</cfexecute>
--->
cfexecute...<br/>
File is saved in the below path-<br/>
C:\output\cfexecuteoutput.txt
<cfexecute name = "C:\Windows\system32\netstat.exe" 
    outputFile = "C:\output\cfexecuteoutput.txt"
    timeout = "1">
</cfexecute>
<!---
cfexecute
--->
<!---
<cfexecute name = "C:\Windows\system32\netstat.exe"
    arguments = "-e" 
    outputFile = "C:\output\cfexecuteoutput.txt"
    timeout = "1">
</cfexecute> 
--->
