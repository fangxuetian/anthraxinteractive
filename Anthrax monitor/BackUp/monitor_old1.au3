#include <GUIConstants.au3>
#include <em.au3>
global $mp
if IniRead("settings.ini","up","up",0) = 0 Then
	$b = 0
	while $b = 0
		$mp = InputBox("","this is the first time that you are using this program. please enter a master password. no repeating characters")
		$tmp = StringSplit($mp,"")
		$var = ""
		$chrvio = ""
		for $i = 1 to $tmp[0]
			StringReplace($mp,$tmp[$i])
			if @extended > 1 Then
				$chrvio = $tmp[$i]
				$var = 1
				ExitLoop
			EndIf
		Next
		if $var = 1 Then
			MsgBox(0,"","There was more than 1 " & $chrvio & " character in your masterpassword please reenter")
		Else
			$b = 1
		EndIf
	WEnd
EndIf
