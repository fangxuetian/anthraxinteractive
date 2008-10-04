#include <array.au3>
$file = FileRead("test.test")
ConsoleWrite($file & @LF)
$file = StringSplit($file,@lf)
_ArrayDisplay($file)
For $i = 1 to $file[0]
;~ 	MsgBox(0,"","")
	ConsoleWrite($file[$i] & @lf)
Next