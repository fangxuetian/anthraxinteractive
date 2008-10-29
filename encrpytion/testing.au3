#include "em.au3"
Dim $aa1, $aa2
For $i = 0 To 31
	If $i = 10 Then
		$aa1 = $aa1 & Chr(10) & Chr(13)
	ElseIf $i = 13 Then
		ContinueLoop
	Else
		$aa1 = $aa1 & Chr($i)
	EndIf
Next
For $i = 127 To 255
	$aa2 = $aa2 & Chr($i)
Next
Local $aan = "9abcdefghijklmnopqrstuvwxyz| .=-\)(*&^%{}$#@!~/+,'"":;><?[]_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678"
$aan = $aa1 & $aan & $aa2
MsgBox(0,"",binary($aan))
$enc = sen($aan)
MsgBox(0,"",$enc)
$dec = binary(sde($enc))
MsgBox(0,"",$dec)
FileWrite("enc",binary($aan & @crlf & $enc))
FileWrite("dec",$dec)
if binary($aan) <> binary($dec) Then
	MsgBox(0,"","lolz")
EndIf