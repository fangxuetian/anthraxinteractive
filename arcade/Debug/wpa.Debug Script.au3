$TempOriginalFileBeingDebuggedFileName = "wpa"
$TempOriginalFileBeingDebuggedFileFolder = "D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade"
$TempOriginalFileBeingDebuggedFilePath = "D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3"
AutoIt_Debugger_LoadFile("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa")
AutoIt_Debugger_DebugFile(@ScriptFullPath)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 1, False, @error, @extended)
#include-once
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 1, False, @error, @extended)

; info at http://msdn.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/win32_windowsproductactivation.asp
; still needs some testing and code improvement
; currently (March,09,2005) this works only with development version of autoit
; get current beta from http://www.autoitscript.com/autoit3/files/beta/autoit/
; then get the newest build from http://www.hiddensoft.com/fileman/users/jpm/AutoIt3-gui/ and extract the zip file
; in the autoit folder



;===============================================================================
;
; Function Name:    _WPA_ActivationRequired()
; Description:      Checks if Windows needs to be activated
; Parameter(s):     $strComputer - the local or remote computer (name or IP)
; Requirement(s):   none
; Return Value(s):  If Yes - 1
;                   If No  - 0
; Author(s):        smiley
;
; Status:           Tested
;
;===============================================================================
;
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 26, False, @error, @extended)
Func _WPA_ActivationRequired($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 26, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 27, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 27, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 28, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 28, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 29, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 29, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 30, False, @error, @extended)
		$ret = $WPAobj.ActivationRequired
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 30, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 31, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 31, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 32, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 32, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 33, False, @error, @extended)
EndFunc   ;==>_WPA_ActivationRequired
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 33, False, @error, @extended)

;===============================================================================
;
; Function Name:    _WPA_Caption()
; Description:
; Parameter(s):     $strComputer - the local or remote computer (name or IP)
; Requirement(s):   none
; Return Value(s):  Returns the caption
; Author(s):        smiley
;
; Status:           Untested
;
;===============================================================================
;
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 48, False, @error, @extended)
Func _WPA_Caption($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 48, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 49, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 49, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 50, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 50, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 51, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 51, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 52, False, @error, @extended)
		$ret = $WPAobj.Caption
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 52, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 53, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 53, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 54, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 54, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 55, False, @error, @extended)
EndFunc   ;==>_WPA_Caption
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 55, False, @error, @extended)


;===============================================================================
;
; Function Name:    _WPA_Description()
; Description:
; Parameter(s):     $strComputer - the local or remote computer (name or IP)
; Requirement(s):   none
; Return Value(s):  Returns the description
; Author(s):        smiley
;
; Status:           Untested
;
;===============================================================================
;
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 71, False, @error, @extended)
Func _WPA_Description($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 71, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 72, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 72, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 73, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 73, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 74, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 74, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 75, False, @error, @extended)
		$ret = $WPAobj.Description
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 75, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 76, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 76, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 77, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 77, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 78, False, @error, @extended)
EndFunc   ;==>_WPA_Description
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 78, False, @error, @extended)

;===============================================================================
;
; Function Name:    _WPA_IsNotificationOn()
; Description:      Checks if the WPA notification icon (Tray) is on
; Parameter(s):     $strComputer - the local or remote computer (name or IP)
; Requirement(s):   none
; Return Value(s):  If Yes - 1
;                   If No  - 0
; Author(s):        smiley
;
;===============================================================================
;
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 92, False, @error, @extended)
Func _WPA_IsNotificationOn($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 92, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 93, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 93, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 94, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 94, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 95, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 95, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 96, False, @error, @extended)
		$ret = $WPAobj.IsNotificationOn
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 96, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 97, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 97, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 98, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 98, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 99, False, @error, @extended)
EndFunc   ;==>_WPA_IsNotificationOn
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 99, False, @error, @extended)

AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 101, False, @error, @extended)
Func _WPA_RemainingEvaluationPeriod($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 101, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 102, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 102, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 103, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 103, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 104, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 104, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 105, False, @error, @extended)
		$ret = $WPAobj.RemainingEvaluationPeriod
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 105, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 106, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 106, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 107, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 107, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 108, False, @error, @extended)
EndFunc   ;==>_WPA_RemainingEvaluationPeriod
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 108, False, @error, @extended)

AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 110, False, @error, @extended)
Func _WPA_ProductID($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 110, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 111, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 111, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 112, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 112, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 113, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 113, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 114, False, @error, @extended)
		$ret = $WPAobj.ProductID
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 114, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 115, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 115, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 116, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 116, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 117, False, @error, @extended)
EndFunc   ;==>_WPA_ProductID
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 117, False, @error, @extended)

AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 119, False, @error, @extended)
Func _WPA_RemainingGracePeriod($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 119, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 120, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 120, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 121, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 121, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 122, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 122, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 123, False, @error, @extended)
		$ret = $WPAobj.RemainingGracePeriod
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 123, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 124, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 124, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 125, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 125, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 126, False, @error, @extended)
EndFunc   ;==>_WPA_RemainingGracePeriod
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 126, False, @error, @extended)

AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 128, False, @error, @extended)
Func _WPA_ServerName($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 128, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 129, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 129, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 130, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 130, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 131, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 131, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 132, False, @error, @extended)
		$ret = $WPAobj.ServerName
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 132, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 133, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 133, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 134, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 134, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 135, False, @error, @extended)
EndFunc   ;==>_WPA_ServerName
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 135, False, @error, @extended)

AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 137, False, @error, @extended)
Func _WPA_SettingID($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 137, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 138, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 138, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 139, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 139, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 140, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 140, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 141, False, @error, @extended)
		$ret = $WPAobj.SettingID
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 141, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 142, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 142, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 143, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 143, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 144, False, @error, @extended)
EndFunc   ;==>_WPA_SettingID
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 144, False, @error, @extended)

AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 146, False, @error, @extended)
Func _WPA_ActivateOffline($ConfirmID, $strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 146, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ConfirmID", $ConfirmID, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 147, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 147, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 148, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 148, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 149, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 149, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 150, False, @error, @extended)
		$ret = $WPAobj.ActivateOffline ($ConfirmID)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 150, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$ConfirmID", $ConfirmID, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 151, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 151, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 152, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 152, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 153, False, @error, @extended)
EndFunc   ;==>_WPA_ActivateOffline
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 153, False, @error, @extended)

AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 155, False, @error, @extended)
Func _WPA_ActivateOnline($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 155, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 156, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 156, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 157, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 157, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 158, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 158, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 159, False, @error, @extended)
		$ret = $WPAobj.ActivateOnline ()
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 159, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 160, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 160, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 161, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 161, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 162, False, @error, @extended)
EndFunc   ;==>_WPA_ActivateOnline
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 162, False, @error, @extended)

AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 164, False, @error, @extended)
Func _WPA_GetInstallationID($strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 164, False, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 165, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 165, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 166, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 166, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 167, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 167, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 168, False, @error, @extended)
		$ret = $WPAobj.GetInstallationID ()
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 168, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 169, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 169, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 170, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 170, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 171, False, @error, @extended)
EndFunc   ;==>_WPA_GetInstallationID
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 171, False, @error, @extended)

;===============================================================================
;
; Function Name:    _WPA_SetNotification()
; Description:      sets the state (on/off) of the WPA icon in the tray
;                   (only works if windows is not already activated)
; Parameter(s):     $enable (1/0)- switch the notification icon on or off
;                   $strComputer - the local or remote computer (name or IP)
; Requirement(s):   none
; Return Value(s):  returns the result of the SetNotification($enable) WMI/COM function
; Author(s):        smiley
;
;===============================================================================
;
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 186, False, @error, @extended)
Func _WPA_SetNotification($enable = "1", $strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 186, False, @error, @extended)
AutoIt_Debugger_SendVariable("$enable", $enable, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 187, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 187, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 188, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 188, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 189, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 189, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 190, False, @error, @extended)
		$ret = $WPAobj.SetNotification ($enable)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 190, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$enable", $enable, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 191, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 191, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 192, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 192, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 193, False, @error, @extended)
EndFunc   ;==>_WPA_SetNotification
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 193, False, @error, @extended)

;===============================================================================
;
; Function Name:    _WPA_SetProductKey()
; Description:      replaces the current Windows key with a new key
; Parameter(s):     $newkey      - the windows key (must be a vaild key for your windows version)
;                   $strComputer - the local or remote computer (name or IP)
; Requirement(s):   none
; Return Value(s):  returns the result of the SetProductKey($newkey) WMI/COM function
; Author(s):        smiley
;
;===============================================================================
;
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 207, False, @error, @extended)
Func _WPA_SetProductKey($newkey, $strComputer = ".")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 207, False, @error, @extended)
AutoIt_Debugger_SendVariable("$newkey", $newkey, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 208, False, @error, @extended)
	$oWMI = ObjGet ("winmgmts:{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 208, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_SendVariable("$strComputer", $strComputer, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 209, False, @error, @extended)
	$oWPAColl = $oWMI.ExecQuery ("Select * from Win32_WindowsProductActivation")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 209, False, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_SendVariable("$oWMI", $oWMI, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 210, False, @error, @extended)
	For $WPAobj IN $oWPAColl
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 210, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$oWPAColl", $oWPAColl, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 211, False, @error, @extended)
		$ret = $WPAobj.SetProductKey ($newkey)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 211, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_SendVariable("$WPAobj", $WPAobj, @error, @extended)
AutoIt_Debugger_SendVariable("$newkey", $newkey, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 212, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 212, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 213, False, @error, @extended)
	Return ($ret)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 213, False, @error, @extended)
AutoIt_Debugger_SendVariable("$ret", $ret, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 214, False, @error, @extended)
EndFunc   ;==>_WPA_SetProductKey
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 214, False, @error, @extended)


;===============================================================================
;
; Function Name:    _WPA_getBinaryDPID_VS2003()
; Description:      gets the Visual Studio 2003 DigitalProductID from the registry
; Parameter(s):     none
; Requirement(s):   none
; Return Value(s):  Returns the binary Visual Studio 2003 DigitalProductID as stored in the registry
; Author(s):        smiley
;
;===============================================================================
; TBD: Error checking and SetError
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 228, False, @error, @extended)
Func _WPA_getBinaryDPID_VS2003()
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 228, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 229, False, @error, @extended)
	return (RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\10.0\Registration\{E05F0409-0E9A-48A1-AC04-E35E3033604A}", "DigitalProductID"))
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 229, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 230, False, @error, @extended)
EndFunc   ;==>_WPA_getBinaryDPID_VS2003
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 230, False, @error, @extended)

;===============================================================================
;
; Function Name:    _WPA_getBinaryDPID_WINDOWS()
; Description:      gets the Windows DigitalProductID from the registry
; Parameter(s):     none
; Requirement(s):   none
; Return Value(s):  Returns the binary Windows DigitalProductID as stored in the registry
; Author(s):        smiley
;
;===============================================================================
; TBD: Error checking and SetError
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 243, False, @error, @extended)
Func _WPA_getBinaryDPID_WINDOWS()
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 243, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 244, False, @error, @extended)
	return (RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion", "DigitalProductID"))
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 244, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 245, False, @error, @extended)
EndFunc   ;==>_WPA_getBinaryDPID_WINDOWS
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 245, False, @error, @extended)

;===============================================================================
;
; Function Name:    _WPA_getBinaryDPID_OFFICE2K3()
; Description:      gets the Office 2003 DigitalProductID from the registry
; Parameter(s):     none
; Requirement(s):   none
; Return Value(s):  Returns the binary 2003 Office DigitalProductID as stored in the registry
; Author(s):        smiley
;
;===============================================================================
; TBD: Error checking and SetError
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 258, False, @error, @extended)
Func _WPA_getBinaryDPID_OFFICE2K3()
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 258, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 259, False, @error, @extended)
	return (RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\11.0\Registration\{90110407-6000-11D3-8CFE-0150048383C9}", "DigitalProductID"))
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 259, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 260, False, @error, @extended)
EndFunc   ;==>_WPA_getBinaryDPID_OFFICE2K3
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 260, False, @error, @extended)


;===============================================================================
;
; Function Name:    _WPA_getBinaryDPID_OFFICEXP()
; Description:      gets the OfficeXP DigitalProductID from the registry
; Parameter(s):     none
; Requirement(s):   none
; Return Value(s):  Returns the binary OfficeXP DigitalProductID as stored in the registry
; Author(s):        smiley
;
;===============================================================================
; TBD: Error checking and SetError
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 274, False, @error, @extended)
Func _WPA_getBinaryDPID_OFFICEXP()
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 274, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 275, False, @error, @extended)
	return (RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\10.0\Registration\{90280409-6000-11D3-8CFE-0050048383C9}", "DigitalProductID"))
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 275, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 276, False, @error, @extended)
EndFunc   ;==>_WPA_getBinaryDPID_OFFICEXP
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 276, False, @error, @extended)

;===============================================================================
;
; Function Name:    _WPA_DecodeProductKey()
; Description:      decodes the PID to get the product key
; Parameter(s):     $BinaryDPID - the PID as stored in registry
; Requirement(s):   none
; Return Value(s):  Returns the decoded Windows/Office/Visual studio/etc. product key
; Author(s):        found this in the Forum, who made it?!
;
;===============================================================================
; TBD: Error checking and SetError
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 289, False, @error, @extended)
Func _WPA_DecodeProductKey($BinaryDPID)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 289, False, @error, @extended)
AutoIt_Debugger_SendVariable("$BinaryDPID", $BinaryDPID, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 290, False, @error, @extended)
	Local $bKey[15]
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 290, False, @error, @extended)
AutoIt_Debugger_SendVariable("$bKey", $bKey, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 291, False, @error, @extended)
	Local $sKey[29]
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 291, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sKey", $sKey, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 292, False, @error, @extended)
	Local $Digits[24]
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 292, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Digits", $Digits, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 293, False, @error, @extended)
	Local $Value = 0
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 293, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Value", $Value, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 294, False, @error, @extended)
	Local $hi = 0
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 294, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hi", $hi, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 295, False, @error, @extended)
	Local $n = 0
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 295, False, @error, @extended)
AutoIt_Debugger_SendVariable("$n", $n, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 296, False, @error, @extended)
	Local $i = 0
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 296, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 297, False, @error, @extended)
	Local $dlen = 29
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 297, False, @error, @extended)
AutoIt_Debugger_SendVariable("$dlen", $dlen, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 298, False, @error, @extended)
	Local $slen = 15
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 298, False, @error, @extended)
AutoIt_Debugger_SendVariable("$slen", $slen, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 299, False, @error, @extended)
	Local $Result
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 299, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Result", $Result, @error, @extended)
	
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 301, False, @error, @extended)
	$Digits = StringSplit("BCDFGHJKMPQRTVWXY2346789", "")
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 301, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Digits", $Digits, @error, @extended)
	
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 303, False, @error, @extended)
	$binaryDPID = StringMid($binaryDPID, 105, 30)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 303, False, @error, @extended)
AutoIt_Debugger_SendVariable("$binaryDPID", $binaryDPID, @error, @extended)
AutoIt_Debugger_SendVariable("$binaryDPID", $binaryDPID, @error, @extended)
	
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 305, False, @error, @extended)
	For $i = 1 To 29 Step 2
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 305, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 306, False, @error, @extended)
		$bKey[Int($i / 2) ] = Dec(StringMid($binaryDPID, $i, 2))
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 306, False, @error, @extended)
AutoIt_Debugger_SendVariable("$bKey", $bKey, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$binaryDPID", $binaryDPID, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 307, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 307, False, @error, @extended)
	
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 309, False, @error, @extended)
	For $i = $dlen - 1 To 0 Step - 1
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 309, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$dlen", $dlen, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 310, False, @error, @extended)
		If Mod(($i + 1), 6) = 0 Then
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 310, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 311, False, @error, @extended)
			$sKey[$i] = "-" 
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 311, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sKey", $sKey, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 312, False, @error, @extended)
		Else
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 312, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 313, False, @error, @extended)
			$hi = 0
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 313, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hi", $hi, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 314, False, @error, @extended)
			For $n = $slen - 1 To 0 Step - 1
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 314, False, @error, @extended)
AutoIt_Debugger_SendVariable("$n", $n, @error, @extended)
AutoIt_Debugger_SendVariable("$slen", $slen, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 315, False, @error, @extended)
				$Value = BitOR(BitShift($hi, -8), $bKey[$n])
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 315, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Value", $Value, @error, @extended)
AutoIt_Debugger_SendVariable("$hi", $hi, @error, @extended)
AutoIt_Debugger_SendVariable("$bKey", $bKey, @error, @extended)
AutoIt_Debugger_SendVariable("$n", $n, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 316, False, @error, @extended)
				$bKey[$n] = Int($Value / 24)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 316, False, @error, @extended)
AutoIt_Debugger_SendVariable("$bKey", $bKey, @error, @extended)
AutoIt_Debugger_SendVariable("$n", $n, @error, @extended)
AutoIt_Debugger_SendVariable("$Value", $Value, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 317, False, @error, @extended)
				$hi = Mod($Value, 24)
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 317, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hi", $hi, @error, @extended)
AutoIt_Debugger_SendVariable("$Value", $Value, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 318, False, @error, @extended)
			Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 318, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 319, False, @error, @extended)
			$sKey[$i] = $Digits[$hi + 1]
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 319, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sKey", $sKey, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$Digits", $Digits, @error, @extended)
AutoIt_Debugger_SendVariable("$hi", $hi, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 320, False, @error, @extended)
		EndIf
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 320, False, @error, @extended)
		
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 322, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 322, False, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 323, False, @error, @extended)
	For $i = 0 To 28
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 323, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 324, False, @error, @extended)
		$Result = $Result & $sKey[$i]
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 324, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Result", $Result, @error, @extended)
AutoIt_Debugger_SendVariable("$Result", $Result, @error, @extended)
AutoIt_Debugger_SendVariable("$sKey", $sKey, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 325, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 325, False, @error, @extended)
	
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 327, False, @error, @extended)
	Return $Result
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 327, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Result", $Result, @error, @extended)
AutoIt_Debugger_NextLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 328, False, @error, @extended)
EndFunc   ;==>_WPA_DecodeProductKey
AutoIt_Debugger_FinishedLine("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\wpa.au3", "wpa", 328, False, @error, @extended)
