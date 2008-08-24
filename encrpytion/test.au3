#include <em.au3>
#include <string.au3>
Dim $a1 = "", $a2 = ""
For $i = 0 To 31
;~ 	ConsoleWrite($i & @lf)
	$a1 = $a1 & Chr($i)
;~ 	ConsoleWrite($i & @lf & StringLen($a1) & @lf & StringReplace($a1,chr(0),"") & @lf & @lf)
Next
For $i = 127 To 255
	$a2 = $a2 & Chr($i)
Next
Local $an = "9abcdefghijklmnopqrstuvwxyz| .=-\)(*&^%{}$#@!~/+,'"":;><?[]_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678"
$an = $a1 & $an & $a2
;~ ConsoleWrite(StringReplace($a1,chr(0),"") & @lf & @lf)
;~ ConsoleWrite(StringLen($a1) & @lf)
$enc = Sen($an)
$dec = sde($enc)
;~ ConsoleWrite(_StringToHex($an) & @lf)
FileWrite("pee.dat",Binary($an))
;~ ConsoleWrite(_StringToHex($dec) & @lf)
;~ ConsoleWrite(StringReplace($an,chr(0),"") & @lf & @lf)
;~ ConsoleWrite(StringReplace($dec,chr(0),"") & @lf & @lf)
if $an <> $dec Then
	ConsoleWrite("lolz")
EndIf