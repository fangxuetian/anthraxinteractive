;~ $b = binary(256)
;~ MsgBox(0,"",$b)
;~ $b = BinaryToString($b)
;~ MsgBox(0,"",$b)
;~ $b = Number($b)
;~ MsgBox(0,"",$b)
;~ msgbox(0,";dfk",Number(binary(256)))
;~ $b = Binary(256)
;~ MsgBox(0, "", $b)

;~ $b = Dec(Hex($b))
;~ MsgBox(0, "", $b)
Local $b = Binary(16277715)
MsgBox(0, "", $b)

Local $a = Bin2Num($b)
MsgBox(0, "", $a)

Func Bin2Num($4Bytes)
    Local $dllStruct2_Integer = DllStructCreate("int")
    Local $dllStruct2_Binary = DllStructCreate("byte[4]", DllStructGetPtr($dllStruct2_Integer))

    DllStructSetData($dllStruct2_Binary, 1, $4Bytes)
    Return DllStructGetData($dllStruct2_Integer, 1)
EndFunc   ;==>Bin2Num