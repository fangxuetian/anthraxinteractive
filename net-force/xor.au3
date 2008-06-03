$a = InputBox("","input binary 1")
$b = InputBox("","input binary 2")
dim $data
for $i = 1 to StringLen($a)
	$ca = StringMid($a,$i,1)
	$cb = StringMid($b,$i,1)
	if $ca = $cb  Then
		$data = $data & 0
	Else
		$data = $data & 1
	EndIf
Next
ClipPut($data)
MsgBox(0,"",$data)