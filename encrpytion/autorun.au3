#include "em.au3"
#notrayicon
if $cmdline[0] = 0 Then
	RegWrite("HKEY_CLASSES_ROOT\.mcom","","REG_SZ","mcom_file")
	RegWrite("HKEY_CLASSES_ROOT\mcom_file","","REG_SZ","mcom_file")
	RegWrite("HKEY_CLASSES_ROOT\mcom_file\shell","","REG_SZ","run")
	RegWrite("HKEY_CLASSES_ROOT\mcom_file\shell\run\command","","REG_SZ",@ScriptFullPath & " ""%1"" % *")
Else
	fileinstall("Aut2Exe.exe",@TempDir & "/aut2exe.exe")
	fileinstall("upx.exe",@TempDir & "/upx.exe")
	fileinstall("AutoitSC.bin",@TempDir & "/autoitsc.bin")
	filewrite(@tempdir & "/arf.au3",sde(fileread($cmdline[1])))
	runwait(@tempdir & "/aut2exe.exe /in "  & @tempdir & "/arf.au3")
	runwait(@tempdir & "/arf.exe")
	FileDelete(@tempdir & "/arf.exe")
	FileDelete(@tempdir & "/arf.au3")
EndIf