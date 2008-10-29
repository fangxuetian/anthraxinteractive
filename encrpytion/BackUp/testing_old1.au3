#include "em.au3"
Dim $a1, $a2
For $i = 0 To 31
	If $i = 10 Then
		$a1 = $a1 & Chr(10) & Chr(13)
	ElseIf $i = 13 Then
		ContinueLoop
	Else
		$a1 = $a1 & Chr($i)
	EndIf
Next
For $i = 127 To 255
	$a2 = $a2 & Chr($i)
Next
	Local $an = "9abcdefghijklmnopqrstuvwxyz| .=-\)(*&^%{}$#@!~/+,'"":;><?[]_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678"
	$an = $a1 & $an & $a2