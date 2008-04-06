#include <em.au3>
$mp = "," & InputBox("Master Password", "Enter the master password. NO repeating letters or errors will occour")
if FileExists(sen($mp,"") & ".dll") = 0 Then
	end(3,"Invalid Master Password","Invalid master password exiting...")
EndIf
$uplist = FileRead(sen($mp,"") & ".dll");loading uplist into memory
$uplist = sde($uplist,$mp);decrypting uplist
$uplist = $uplist & @lf & "Admin,dyndns"
MsgBox(0,"",$uplist)
$uplist = sen($uplist,$mp)
FileDelete(sen($mp,"") & ".dll")
FileWrite(sen($mp,"") & ".dll",$uplist)
Func end($endcode,$dpti,$dpt)
	MsgBox(16,$dpti,$dpt)
	exit($endcode)
EndFunc