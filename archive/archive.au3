local $fheader
#cs
function name
mnaf
parameters
archive-name,filename-to-put-into-archive
#ce
mnaf("lol.txt","lolzilikepielolzzz")
Func mnaf($fname,$insert)
	$fname = FileRead($fname)
	$fheader = "AA" & Chr(02) & chr(01) & StringLen("AA" & Chr(02) & chr(01) & Chr(01)) + stringlen($fname)+1 & chr(01) & $insert
	ConsoleWrite($fheader & @lf)
	ConsoleWrite("AA" & Chr(02) & chr(01) & Chr(01) + stringlen($insert)+1 & @lf)
EndFunc