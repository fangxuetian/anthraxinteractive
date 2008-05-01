#include-once
Local $rt
Local $rt1
Local $ct
Func sen($pt, $lol)
	Local $an = "9abcdefghijklmnopqrstuvwxyz .=-\)(*&^%$#@!~/+,'"":;><?[]{}" & @LF & @CR & "	_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678"
	For $i = 1 To StringLen($lol)
		$an = StringReplace($an, StringMid($lol, $i, 1), "",0,1)
	Next
	$ant = StringLeft($an, 39) & $lol & StringMid($an, (StringLen($an) - StringLen($lol)) - 39, 73)
	$an = $ant
	$rt = ""
	$rt1 = ""
	For $i = 1 To StringLen($pt)
		$cl = StringMid($pt, $i, 1)
		$cp = StringInStr($an, $cl, 1)
		ConsoleWrite($cl & @LF & $cp & @LF)
		If $cp = StringLen($an) Then
			$rt = $rt & "a"
			ConsoleWrite("$rt " & $rt & @LF)
		Else
			$idk = $cp + 1
			ConsoleWrite("$idk " & $idk & @LF)
			$le = StringMid($an, $idk, 1)
			ConsoleWrite("$le " & $le & @LF)
			$rt = $rt & $le
			ConsoleWrite("$rtlol " & $rt & @LF)
		EndIf
	Next
	For $i = 1 To StringLen($rt)
		$ctl = StringMid($rt, $i, 1)
		ConsoleWrite("$ctl " & $ctl & @LF)
		If $rt1 = "" Then
			$rt1 = $rt1 & StringInStr($an, $ctl, 1)
		Else
			$rt1 = $rt1 & " " & StringInStr($an, $ctl, 1)
		EndIf
	Next
	ConsoleWrite("$rt1 " & $rt1 & @LF)
	ConsoleWrite("$rt " & $rt & @LF)
	ConsoleWrite("$rt1 " & $rt1 & @LF)
	$rt = $rt1
	Return $rt
EndFunc   ;==>sen
Func sde($et, $lol)
	Local $an = "9abcdefghijklmnopqrstuvwxyz .=-\)(*&^%$#@!~/+,'"":;><?[]{}" & @LF & @CR & "	_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678"
	For $i = 1 To StringLen($lol)
		$an = StringReplace($an, StringMid($lol, $i, 1), "",0,1)
	Next
	$ant = StringLeft($an, 39) & $lol & StringMid($an, (StringLen($an) - StringLen($lol)) - 39, 73)
	$an = $ant
	$rt = ""
	$rt1 = ""
	$pt = ""
	$et = StringReplace($et, @CR, " ")
	$et = StringReplace($et, @LF, " ")
	$et = StringReplace($et, @CRLF, " ")
	$ets = StringSplit($et, " ")
	For $i = 1 To $ets[0]
		If $ets[$i] = 1 Then
			$rt = $rt & "9"
		Else
			$rt = $rt & StringMid($an, $ets[$i] - 1, 1)
		EndIf
	Next
	Return $rt
EndFunc   ;==>sde