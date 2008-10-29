func _dstorefindindex($dstore,$nameofsection)
	dim $index = -1,$temp
	if StringInStr($dstore,@crlf) <> 0 Then
		$temp = StringSplit($dstore,@crlf)
	ElseIf if StringInStr($dstore,@lf) <> 0 Then
		$temp = StringSplit($dstore,@lf)
	Else
		$temp = StringSplit($dstore,@cr)
	EndIf
	for $i = 1 to $temp[0]
		if StringInStr($temp[$i],$nameofsection & "|") <> 0 Then
			$index = $i
			ExitLoop
		EndIf
	Next
	Return $index
EndFunc
func _dstorestorevalue