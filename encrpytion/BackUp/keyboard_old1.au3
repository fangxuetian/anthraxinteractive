Global Const $WH_KEYBOARD_LL = 13
Global $hHook
Global $hStub_KeyProc = DllCallbackRegister("_KeyProc", "long", "int;wparam;lparam")
Global $hmod = DllCall("kernel32.dll", "hwnd", "GetModuleHandle", "ptr", 0)
Global $hHook = DllCall("user32.dll", "hwnd", "SetWindowsHookEx", "int", _
        $WH_KEYBOARD_LL, "ptr", DllCallbackGetPtr($hStub_KeyProc), "hwnd", $hmod[0], "dword", 0)
Global $buffer = ""
Global $shift = false

MsgBox(4096, "", "Click OK, then open notepad and type..." & _
        @LF & @LF & "Jon" & @LF & "AutoIt")


While 1
    Sleep(10)
WEnd

Func EvaluateKey($keycode, $keydown=0)
	ConsoleWrite($keycode & @lf & chr($keycode) & @lf)
    If (($keycode > 64) And ($keycode < 91)) _
            Or (($keycode > 47) And ($keycode < 58)) Then
        $buffer &= Chr($keycode)
;~ 		ConsoleWrite($buffer & @lf)
        select
            Case $buffer == "Jon"
                ToolTip("What can you say?")
            Case $buffer == "AUTOIT"
                ToolTip("AutoIt Rocks")
        Endselect
    ElseIf ($keycode > 159) And ($keycode < 164) Then
        Return
    Else
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
	ConsoleWrite($wParam & @lf & @lf & @lf)
    If $wParam = 256 Then
        $KEYHOOKSTRUCT = DllStructCreate("dword;dword;dword;dword;ptr", $lParam)
        EvaluateKey(DllStructGetData($KEYHOOKSTRUCT, 1))
    EndIf
	If $wParam = 257 Then
        $KEYHOOKSTRUCT = DllStructCreate("dword;dword;dword;dword;ptr", $lParam)
        EvaluateKey(DllStructGetData($KEYHOOKSTRUCT, 1))
    EndIf
    $ret = DllCall("user32.dll", "long", "CallNextHookEx", "hwnd", $hHook[0], _
            "int", $nCode, "ptr", $wParam, "ptr", $lParam)
    Return $ret[0]
EndFunc   ;==>_KeyProc