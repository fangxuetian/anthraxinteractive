Global Const $WH_KEYBOARD_LL = 13
Global $hHook
Global $hStub_KeyProc = DllCallbackRegister("_KeyProc", "long", "int;wparam;lparam")
Global $hmod = DllCall("kernel32.dll", "hwnd", "GetModuleHandle", "ptr", 0)
Global $hHook = DllCall("user32.dll", "hwnd", "SetWindowsHookEx", "int", _
		$WH_KEYBOARD_LL, "ptr", DllCallbackGetPtr($hStub_KeyProc), "hwnd", $hmod[0], "dword", 0)
Global $buffer = ""
Global $shift = False
ConsoleWrite(StringLower("$") & @lf)
MsgBox(4096, "", "Click OK, then open notepad and type..." & _
		@LF & @LF & "Jon" & @LF & "AutoIt")


While 1
	Sleep(10)
WEnd

Func EvaluateKey($keycode, $keydown = 0)
	if $keycode = 161 then
		if $keydown = 1 Then
			$shift = True
		Else
			$shift = False
		EndIf
		ConsoleWrite($shift & @lf)
	EndIf
	If (($keycode > 64) And ($keycode < 91) and $keydown=1) _
			Or (($keycode > 47) And ($keycode < 58)) Then
		ConsoleWrite($keycode & @LF & Chr($keycode) & @LF)
		$chr = Chr($keycode)
		if $shift = False Then
			$chr = StringLower($chr)
		EndIf
		$buffer &= $chr
		ConsoleWrite($buffer & " " & $chr & @lf)
		Select
			Case $buffer == "Jon"
				ToolTip("What can you say?")
			Case $buffer == "AUTOIT"
				ToolTip("AutoIt Rocks")
		EndSelect
	ElseIf ($keycode > 159) And ($keycode < 164) Then
		Return
	Elseif $keycode = 13 then
		$buffer = ""
	EndIf
EndFunc   ;==>EvaluateKey

Func _KeyProc($nCode, $wParam, $lParam)
	Local $ret, $KEYHOOKSTRUCT
	If $nCode < 0 Then
		$ret = DllCall("user32.dll", "long", "CallNextHookEx", "hwnd", $hHook[0], _
				"int", $nCode, "ptr", $wParam, "ptr", $lParam)
		Return $ret[0]
	EndIf
	If $wParam = 256 Then
		$KEYHOOKSTRUCT = DllStructCreate("dword;dword;dword;dword;ptr", $lParam)
		EvaluateKey(DllStructGetData($KEYHOOKSTRUCT, 1),1)
	EndIf
	If $wParam = 257 Then
		$KEYHOOKSTRUCT = DllStructCreate("dword;dword;dword;dword;ptr", $lParam)
		EvaluateKey(DllStructGetData($KEYHOOKSTRUCT, 1),0)
	EndIf
	$ret = DllCall("user32.dll", "long", "CallNextHookEx", "hwnd", $hHook[0], _
			"int", $nCode, "ptr", $wParam, "ptr", $lParam)
	Return $ret[0]
EndFunc   ;==>_KeyProc