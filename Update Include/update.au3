func update($iurl,$uurl,$curv,$curv1,$curv1o)
	dim $update = 0
	$dir = @TempDir & "\" & Random(0,125) & "auplolz.ini"
	InetGet($iurl,$dir,1)
	$nver = IniRead($dir,"update","ver",0)
	$nver1 = IniRead($dir,"update","ver1",0)
	if $nver > $curv Then
		$update = 1
	EndIf
	if ($nver1 - $curv1) >= $curv1o Then
		$update = 1
	EndIf
	if $update = 1 Then
		InetGet($uurl,@ScriptDir & "\update.upd",1)
		run("update.upd " & @AutoItPID)
		exit
	EndIf
EndFunc
