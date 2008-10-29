#include "em_mod.au3"
$file = FileOpenDialog("file",@ScriptDir,"(*.*) all files")
$file = FileRead($file)
$file = sen($file,InputBox("","Enter pass #1"))
FileWrite("enc.enc",$file)