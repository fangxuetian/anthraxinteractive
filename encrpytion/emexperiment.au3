#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Run_Obfuscator=y
#Obfuscator_Parameters=/cf 0
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include-once
Local $rt
Local $rt1
Local $ct
Dim $a1, $a2
For $i = 0 To 31
	$a1 = $a1 & Chr($i)
Next
For $i = 127 To 255
	$a2 = $a2 & Chr($i)
Next
Func sen($pt, $lol = "", $mchk = 0)
	Local $an = "9abcdefghijklmnopqrstuvwxyz| .=-\)(*&^%{}$#@!~/+,'"":;><?[]" & @LF & @CR & "	_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678"
	If StringLen($lol) > 0 Then
		For $i = 1 To StringLen($lol)
			$an = StringReplace($an, StringMid($lol, $i, 1), "", 0, 1)
;~ 			FileWrite("data.dat",Binary($an))
		Next
		ConsoleWrite($an & @LF)

		$ant = StringLeft($an, 39) & $lol & StringMid($an, (39 + StringLen($lol)))
		$an = $ant
;~ 		FileWrite("data.dat",Binary($an))
		ConsoleWrite($an & @LF)
	EndIf
;~ 	$an = $a1 & $an & $a2
	$rt = ""
	$rt1 = ""
	For $i = 1 To StringLen($pt)
		$cl = StringMid($pt, $i, 1)
		$cp = StringInStr($an, $cl, 1)
		$idk = $cp + 1
;~ 		ConsoleWrite($cl & @LF & $cp & @LF & $an & @LF)
		If $cp = StringLen($an) Then
			$rt = $rt & StringLeft($an, 1)
;~ 			ConsoleWrite("$rt " & $rt & @LF)
		Else
			$idk = $cp + 1
;~ 			ConsoleWrite("$idk " & $idk & @LF)
			$le = StringMid($an, $idk, 1)
;~ 			ConsoleWrite("$le " & $le & @LF)
			$rt = $rt & $le
;~ 			ConsoleWrite("$rtlol " & $rt & @LF)
		EndIf
	Next
;~ 	For $i = 1 To StringLen($rt)
;~ 		$ctl = StringMid($rt, $i, 1)
;~ 		ConsoleWrite("$ctl " & $ctl & @LF)
;~ 		If $rt1 = "" Then
;~ 			$rt1 = $rt1 & StringInStr($an, $ctl, 1)
;~ 		Else
;~ 			$rt1 = $rt1 & " " & StringInStr($an, $ctl, 1)
;~ 		EndIf
;~ 	Next
;~ 	ConsoleWrite("$rt1 " & $rt1 & @LF)
;~ 	ConsoleWrite("$rt " & $rt & @LF)
;~ 	ConsoleWrite("$rt1 " & $rt1 & @LF)
	Return $rt
EndFunc   ;==>sen
Func sde($et, $lol)
	Local $an = "9abcdefghijklmnopqrstuvwxyz| .=-\)(*&^%{}$#@!~/+,'"":;><?[]" & @LF & @CR & "	_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678"
	If StringLen($lol) > 0 Then
		For $i = 1 To StringLen($lol)
			$an = StringReplace($an, StringMid($lol, $i, 1), "", 0, 1)
		Next
		$ant = StringLeft($an, 39) & $lol & StringMid($an, (39 + StringLen($lol)))
		$an = $ant
	EndIf
;~ 	$an = $a1 & $an & $a2
	$rt = ""
	$rt1 = ""
	$pt = ""
	For $i = 1 To StringLen($et)
		$ctl = StringMid($et, $i, 1)
		If $rt1 = "" Then
			$rt1 = $rt1 & StringInStr($an, $ctl, 1)
		Else
			$rt1 = $rt1 & " " & StringInStr($an, $ctl, 1)
		EndIf
	Next
	$ets = StringSplit($rt1, " ")
	For $i = 1 To $ets[0]
		If $ets[$i] = 1 Then
			$rt = $rt & StringRight($an, 1)
		Else
			$rt = $rt & StringMid($an, $ets[$i] - 1, 1)
		EndIf
	Next
	Return $rt
EndFunc   ;==>sde