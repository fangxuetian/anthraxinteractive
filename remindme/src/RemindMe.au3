#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Version=beta
#AutoIt3Wrapper_Icon=..\build\icon.ICO
#AutoIt3Wrapper_Outfile=..\build\release\RemindMe.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Comment=Anthrax Interactive RemindMe
#AutoIt3Wrapper_Res_Description=Reminder Alarm Program.
#AutoIt3Wrapper_Res_Fileversion=0.0.54.0
#AutoIt3Wrapper_Res_LegalCopyright=Copyright 2007-2008 Anthrax Interactive
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_res_requestedExecutionLevel=requireAdministrator
#AutoIt3Wrapper_Run_Tidy=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Date.au3>
#include <GuiConstants.au3>
#include <Constants.au3>
#include 'inc\Functions.au3'
#include "inc\wrapper.au3"
wrap("Remind me","athcoderremindme",1,"h","http://cpudeamon.com/forums/index.php")
Global $gui, $font, $regAMPM, $regHour, $regLoc, $regMessage, $regMinute, $hour, $minute, $AMPM, $message, $help, $NowTime, $aMsg
$gui = GUICreate("Anthrax RemindMe", 260, 90, 193, 125)
Opt("GUIOnEventMode", 1)
Opt("MustDeclareVars", 1)
GUISetBkColor(0x000000, $gui)
$font = "Arial"
GUISetFont(9, 400, 0, $font)
AdlibEnable("Refresh", 1000)
$regLoc = "HKLM\SOFTWARE\Anthrax Interactive\RemindMe"
$regHour = RegRead($regLoc, "Hour")
$regMinute = RegRead($regLoc, "Minute")
$regAMPM = RegRead($regLoc, "AMPM")
$regMessage = RegRead($regLoc, "Message")
$hour = GUICtrlCreateInput("Hour", 10, 8, 50, 21)
GUICtrlSetData(-1, $regHour)
$minute = GUICtrlCreateInput("Min.", 60, 8, 50, 21)
GUICtrlSetData(-1, $regMinute)
$AMPM = GUICtrlCreateInput("AM/PM", 110, 8, 50, 21)
GUICtrlSetData(-1, $regAMPM)
GUICtrlSetLimit(-1, 2)
$message = GUICtrlCreateInput("Alarm Message", 160, 8, 100, 21)
GUICtrlSetData(-1, $regMessage)
$help = GUICtrlCreateButton("Help", 10, 30, 260, 25)
$NowTime = GUICtrlCreateLabel("Current Time:" & _NowTime(), 10, 60, 260, 20)
GUICtrlSetColor(-1, 0xff0000)
GUISetState(@SW_SHOW)
GUISetOnEvent($GUI_EVENT_CLOSE, "_Exit")
GUISetOnEvent($help, "_Help")
While 1
	$aMsg = GUIGetMsg()
	Switch $aMsg
		Case $help
			_Help()
	EndSwitch
	If _NowTime() = GUICtrlRead($hour) & ":" & GUICtrlRead($minute) & ":00 " & GUICtrlRead($AMPM) Then
		For $i = 1 To 5
			Beep(1100, 500)
		Next
		MsgBox(0, "Anthrax RemindMe", "It is " & _NowTime() & ". " & GUICtrlRead($message))
		If $regLoc = 0 Then
			RegWrite($regLoc)
		EndIf
		If $regHour = 0 Then
			RegWrite($regLoc, "Hour")
		EndIf
		If $regMinute = 0 Then
			RegWrite($regLoc, "Minute")
		EndIf
		If $regAMPM = 0 Then
			RegWrite($regLoc, "AMPM")
		EndIf
		If $regMessage = 0 Then
			RegWrite($regLoc, "Message")
		EndIf
		Sleep(500)
		If GUICtrlRead($hour) <> $regHour Then
			RegWrite($regLoc, "Hour", "REG_SZ", GUICtrlRead($hour))
		EndIf
		If GUICtrlRead($minute) <> $regMinute Then
			RegWrite($regLoc, "Minute", "REG_SZ", GUICtrlRead($minute))
		EndIf
		If GUICtrlRead($AMPM) <> $regAMPM Then
			RegWrite($regLoc, "AMPM", "REG_SZ", GUICtrlRead($AMPM))
		EndIf
		If GUICtrlRead($message) <> $regMessage Then
			RegWrite($regLoc, "Message", "REG_SZ", GUICtrlRead($message))
		EndIf
	EndIf
WEnd