#include <GUIConstants.au3>
#include <em.au3>
Global $mp
Global $fname
If IniRead("settings.ini", "up", "up", 0) = 0 Then
	$b = 0
	While $b = 0
		$mp = InputBox("", "this is the first time that you are using this program. please enter a master password. no repeating characters")
		$tmp = StringSplit($mp, "")
		$var = ""
		$chrvio = ""
		For $i = 1 To $tmp[0]
			StringReplace($mp, $tmp[$i],"")
			If @extended > 1 Then
				$chrvio = $tmp[$i]
				$var = 1
				ExitLoop
			EndIf
		Next
		If $var = 1 Then
			MsgBox(0, "", "There was more than 1 " & $chrvio & " character in your masterpassword please reenter")
		Else
			$b = 1
		EndIf
	WEnd
	$fname = sen($mp,"") & ".dll"
	FileWrite($fname,"")
	IniWrite("settings.ini", "up", "up", 1)
EndIf