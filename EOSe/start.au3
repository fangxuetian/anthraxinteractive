#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compression=4
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Bootloader.au3>
#include <LogonScreen.au3>
#include <Logoff.au3>
#include <Interface.au3>
#include <Wrapper.au3>
#include <em.au3>
Global $users[1677715]
Global $passes[1677715]
Global $mp
$mp = "," & InputBox("Anthrax EOSe", "Enter the master password. No repeating letters or errors will occur. If this is your first boot, enter your new master password.","","*")
if IniRead("Settings.ini","UP","upc",0) = 0 Then
	IniWrite("Settings.ini","UP","upc",1)
	FileWrite(sen($mp,"") & ".dll",sen("Admin,",$mp))
EndIf
if FileExists(sen($mp,"") & ".dll") = 0 Then
	end(3,"Anthrax EOSe","Invalid master password, exiting...")
EndIf
HotKeySet("{ESCAPE}", "_exit")
Wrap("Anthrax EOSe", "Milkshakeingcows", "dyns", 24, "h")
Boot()
Func _exit()
	Exit (2)
EndFunc   ;==>_exit
Func end($endcode,$dpti,$dpt)
	MsgBox(16,$dpti,$dpt)
	exit($endcode)
EndFunc