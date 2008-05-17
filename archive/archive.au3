local $fheader
#cs
function name
mnaf
parameters
archive-name,filename-to-put-into-archive
#ce
mnaf("lol","lol.txt")
Func mnaf($fname,$insert)
	$insert = FileRead($insert)
	$fheader = "AA" & Chr(02) & chr(01) & StringLen("AA" & Chr(02) & chr(01) & Chr(01)) + stringlen($insert)+100+1 & chr(01) & $insert
	ConsoleWrite($fheader & @lf)
	ConsoleWrite("AA" & Chr(02) & chr(01) & Chr(01) + stringlen($insert)+1 & @lf)
EndFunc