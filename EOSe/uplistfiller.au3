#include <em.au3>
$mp = "," & InputBox("Master Password", "Enter the master password. NO repeating letters or errors will occour")
if IniRead("Settings.ini","UP","upc",0) = 0 Then
	IniWrite("Settings.ini","UP","upc",1)
	FileWrite(sen($mp,"") & ".dll",sen("Admin,",$mp))
EndIf
if FileExists(sen($mp,"") & ".dll") = 0 Then
	exit
EndIf
$uplistl = sde(FileRead(sen($mp,"") & ".dll"),$mp)
dim $c = 0
for $i = 1 to 100
	$uplistl = $uplistl & @lf & chr(Random(32,43,1)) & "," & chr(Random(32,43,1))
	$c = $c+1
	if $c = 10 Then
		MsgBox(0,"",$i)
		$c = 0
	EndIf
Next
FileDelete(sen($mp,"") & ".dll")
FileWrite(sen($mp,"") & ".dll",sen($uplistl,$mp))