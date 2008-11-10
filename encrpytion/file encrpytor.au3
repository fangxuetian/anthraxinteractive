#include <em_mod.au3>
$filen = FileOpenDialog("encrpytion",@ScriptDir,"any thing(*.*)")
$fdata = FileRead($filen)
$pass = InputBox("pass","pass","","*")
$output = sen($fdata,$pass)
FileWrite($filen & "_Enc",$output)