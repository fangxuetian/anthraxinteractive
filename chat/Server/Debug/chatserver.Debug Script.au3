#Include <winapi.au3>
#include <GUIConstants.au3>
#include <WindowsConstants.au3>
AutoIt_Debugger_CreateMessageWindow()
$TempOriginalFileBeingDebuggedFileName = "chatserver"
$TempOriginalFileBeingDebuggedFileFolder = "C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server"
$TempOriginalFileBeingDebuggedFilePath = "C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3"
AutoIt_Debugger_LoadFile("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver")
AutoIt_Debugger_DebugFile(@ScriptFullPath)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 1, False, @error, @extended)
#RequireAdmin
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 1, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 2, False, @error, @extended)
#Include "C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\Debug\ASock.Debug Script.au3"
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 2, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 3, False, @error, @extended)
#Include "C:\Program Files\AutoIt3\Include\Constants.au3"
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 3, False, @error, @extended)
;~ #NoTrayIcon
;~ Const $WM_USER = 1024
;;;
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 7, False, @error, @extended)
Const $B_BEPOLITE = False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 7, False, @error, @extended)
AutoIt_Debugger_SendVariable("$B_BEPOLITE", $B_BEPOLITE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 8, False, @error, @extended)
Const $N_MAXSOCKETS = 25
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 8, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 9, False, @error, @extended)
Const $N_DEFAULTPORT = 42775
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 9, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_DEFAULTPORT", $N_DEFAULTPORT, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 10, False, @error, @extended)
Const $N_MAXRECV = 65536
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 10, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXRECV", $N_MAXRECV, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 11, False, @error, @extended)
Const $N_WAITCLOSE = 2000
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 11, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_WAITCLOSE", $N_WAITCLOSE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 12, False, @error, @extended)
Const $N_WAITWORK = 750
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 12, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_WAITWORK", $N_WAITWORK, @error, @extended)
;;;
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 14, False, @error, @extended)
Dim $hListenSocket
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 14, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hListenSocket", $hListenSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 15, False, @error, @extended)
Dim $hSockets[ $N_MAXSOCKETS ]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 15, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 16, False, @error, @extended)
Dim $hNotifyGUI
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 16, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hNotifyGUI", $hNotifyGUI, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 17, False, @error, @extended)
Dim $g_bExecExit = True
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 17, False, @error, @extended)
AutoIt_Debugger_SendVariable("$g_bExecExit", $g_bExecExit, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 18, False, @error, @extended)
Global $chatlog
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 18, False, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 19, False, @error, @extended)
Global $msgqueue[1677715]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 19, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 20, False, @error, @extended)
Global $nicks[1677715]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 20, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 21, False, @error, @extended)
Global $password = ""
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 21, False, @error, @extended)
AutoIt_Debugger_SendVariable("$password", $password, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 22, False, @error, @extended)
global $admin[1677715]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 22, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 23, False, @error, @extended)
global $auser[1677715]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 23, False, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 24, False, @error, @extended)
global $apass[1677715]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 24, False, @error, @extended)
AutoIt_Debugger_SendVariable("$apass", $apass, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 25, False, @error, @extended)
global $allowconnections = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 25, False, @error, @extended)
AutoIt_Debugger_SendVariable("$allowconnections", $allowconnections, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 26, False, @error, @extended)
$auser[0] = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 26, False, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 27, False, @error, @extended)
$apass[0] = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 27, False, @error, @extended)
AutoIt_Debugger_SendVariable("$apass", $apass, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 28, False, @error, @extended)
$auser[1] = "foome"
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 28, False, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 29, False, @error, @extended)
$apass[1] = "foome"
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 29, False, @error, @extended)
AutoIt_Debugger_SendVariable("$apass", $apass, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 30, False, @error, @extended)
$nicks[0] = 0
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 30, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 31, False, @error, @extended)
Opt("OnExitFunc", "ExitProgram")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 31, False, @error, @extended)
;;;
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 33, False, @error, @extended)
main()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 33, False, @error, @extended)
;;;
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 35, False, @error, @extended)
Func main()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 35, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 36, False, @error, @extended)
	Dim $iPort
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 36, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iPort", $iPort, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 37, False, @error, @extended)
	Dim $i
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 37, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
	;;;
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 39, False, @error, @extended)
	If Not TCPStartup() Then Error("WSAStartup() failed.", False)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 39, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 41, False, @error, @extended)
	$hListenSocket = _ASocket()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 41, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hListenSocket", $hListenSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 42, False, @error, @extended)
	If @error Then Error("Socket creation failed.", False)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 42, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 44, False, @error, @extended)
	$hNotifyGUI = GUICreate("Dummy Notify Window / " & TimerInit())
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 44, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hNotifyGUI", $hNotifyGUI, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 45, False, @error, @extended)
	_ASockSelect($hListenSocket, $hNotifyGUI, $WM_USER, $FD_ACCEPT)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 45, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hListenSocket", $hListenSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$hNotifyGUI", $hNotifyGUI, @error, @extended)
AutoIt_Debugger_SendVariable("$WM_USER", $WM_USER, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_ACCEPT", $FD_ACCEPT, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 46, False, @error, @extended)
	If @error Then Error("Error selecting FD_ACCEPT event.")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 46, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 47, False, @error, @extended)
	GUIRegisterMsg($WM_USER, "OnAccept")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 47, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WM_USER", $WM_USER, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 49, False, @error, @extended)
	For $i = 0 To $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 49, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 50, False, @error, @extended)
		$hSockets[ $i ] = -1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 50, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 51, False, @error, @extended)
		GUIRegisterMsg($WM_USER + 1 + $i, "OnSocketEvent")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 51, False, @error, @extended)
AutoIt_Debugger_SendVariable("$WM_USER", $WM_USER, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 52, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 52, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 54, False, @error, @extended)
	$iPort = InputBox("Listen Port", "Enter the port to listen to:", $N_DEFAULTPORT, " M5")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 54, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iPort", $iPort, @error, @extended)
AutoIt_Debugger_SendVariable("$N_DEFAULTPORT", $N_DEFAULTPORT, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 55, False, @error, @extended)
	If @error Then _Exit()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 55, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 57, False, @error, @extended)
	_ASockListen($hListenSocket, InputBox("IP", "Listen ip?"), $iPort)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 57, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hListenSocket", $hListenSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$iPort", $iPort, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 58, False, @error, @extended)
	If @error Then Error("Error trying to listen on port " & $iPort & ", INADDR_ANY." & @CRLF & "@error = " & @error & " @extended = " & @extended)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 58, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iPort", $iPort, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 60, False, @error, @extended)
	Out("Have begun to listen on port " & $iPort & ", INADDR_ANY. Waiting...")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 60, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iPort", $iPort, @error, @extended)
	
	; Place your code here.
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 63, False, @error, @extended)
	$i = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 63, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 64, False, @error, @extended)
	While 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 64, False, @error, @extended)
;~ 		Out("Doing serious work indeed... (" & $i & ")")
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 66, False, @error, @extended)
		$i += 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 66, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 67, False, @error, @extended)
		For $j = 0 To $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 67, False, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 68, False, @error, @extended)
			If $hSockets[ $j ] <> -1 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 68, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 69, False, @error, @extended)
				TCPSend($hSockets[ $j ], $msgqueue[$j])
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 69, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 70, False, @error, @extended)
			EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 70, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 71, False, @error, @extended)
			$msgqueue[$j] = ""
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 71, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 72, False, @error, @extended)
		Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 72, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 73, False, @error, @extended)
		Sleep($N_WAITWORK)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 73, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_WAITWORK", $N_WAITWORK, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 74, False, @error, @extended)
	WEnd
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 74, False, @error, @extended)
	; I presume that this code will not be executed.
	; Correct me if I'm wrong.
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 77, False, @error, @extended)
EndFunc   ;==>main
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 77, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 79, False, @error, @extended)
Func OnAccept($hWnd, $iMsgID, $WParam, $LParam)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 79, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWnd", $hWnd, @error, @extended)
AutoIt_Debugger_SendVariable("$iMsgID", $iMsgID, @error, @extended)
AutoIt_Debugger_SendVariable("$WParam", $WParam, @error, @extended)
AutoIt_Debugger_SendVariable("$LParam", $LParam, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 80, False, @error, @extended)
	Local $hSocket = $WParam
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 80, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$WParam", $WParam, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 81, False, @error, @extended)
	Local $iError = _HiWord($LParam)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 81, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iError", $iError, @error, @extended)
AutoIt_Debugger_SendVariable("$LParam", $LParam, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 82, False, @error, @extended)
	Local $iEvent = _LoWord($LParam)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 82, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iEvent", $iEvent, @error, @extended)
AutoIt_Debugger_SendVariable("$LParam", $LParam, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 83, False, @error, @extended)
	Local $iFreeSock
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 83, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 84, False, @error, @extended)
	Local $hTempSock
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 84, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hTempSock", $hTempSock, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 86, False, @error, @extended)
	If $iMsgID = $WM_USER Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 86, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iMsgID", $iMsgID, @error, @extended)
AutoIt_Debugger_SendVariable("$WM_USER", $WM_USER, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 87, False, @error, @extended)
		If $iError <> 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 87, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iError", $iError, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 88, False, @error, @extended)
			Error("OnAccept: error while listening or trying to listen!")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 88, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 89, False, @error, @extended)
		EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 89, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 90, False, @error, @extended)
		$iFreeSock = FreeSock()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 90, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 91, False, @error, @extended)
		If $iFreeSock = -1 Then; No vacancies!
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 91, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 92, False, @error, @extended)
			$hTempSock = TCPAccept($hSocket)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 92, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hTempSock", $hTempSock, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 93, False, @error, @extended)
			If $hTempSock <> -1 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 93, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hTempSock", $hTempSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 94, False, @error, @extended)
				TCPSend($hTempSock, "No vacancies!")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 94, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hTempSock", $hTempSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 95, False, @error, @extended)
				_ASockShutdown($hTempSock)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 95, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hTempSock", $hTempSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 96, False, @error, @extended)
				If $B_BEPOLITE Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 96, False, @error, @extended)
AutoIt_Debugger_SendVariable("$B_BEPOLITE", $B_BEPOLITE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 97, False, @error, @extended)
					Sleep($N_WAITCLOSE / 10)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 97, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_WAITCLOSE", $N_WAITCLOSE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 98, False, @error, @extended)
				Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 98, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 99, False, @error, @extended)
					Sleep(1)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 99, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 100, False, @error, @extended)
				EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 100, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 101, False, @error, @extended)
				TCPCloseSocket($hTempSock)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 101, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hTempSock", $hTempSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 102, False, @error, @extended)
			EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 102, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 103, False, @error, @extended)
		Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 103, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 104, False, @error, @extended)
			$hSockets[ $iFreeSock ] = TCPAccept($hSocket)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 104, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 105, False, @error, @extended)
			If $hSockets[ $iFreeSock ] = -1 Then; This shouldn't happen.
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 105, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 106, False, @error, @extended)
				Out("+> OnAccept: Hmm thought I'd catch a connection... Oh well.")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 106, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 107, False, @error, @extended)
			Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 107, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 108, False, @error, @extended)
				Out("+> OnAccept: Accepted a connection on socket #" & $iFreeSock + 1 & " (socket " & $hSockets[ $iFreeSock ] & ")")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 108, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 109, False, @error, @extended)
				TrayTip("Accepted a connection", "Socket #" & $iFreeSock + 1 & "; handle = " & $hSockets[ $iFreeSock ] & @CRLF & "IP address = " & SocketToIP($hSockets[ $iFreeSock ]), 30)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 109, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 110, False, @error, @extended)
 				_ASockSelect($hSockets[ $iFreeSock ], $hNotifyGUI, $WM_USER + $iFreeSock + 1, 						BitOR($FD_READ, $FD_WRITE, $FD_CLOSE))
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 111, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_SendVariable("$hNotifyGUI", $hNotifyGUI, @error, @extended)
AutoIt_Debugger_SendVariable("$WM_USER", $WM_USER, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_READ", $FD_READ, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_WRITE", $FD_WRITE, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_CLOSE", $FD_CLOSE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 112, False, @error, @extended)
				If @error Then Error("Error selecting events on socket #" & $iFreeSock + 1 & ".")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 112, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iFreeSock", $iFreeSock, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 113, False, @error, @extended)
			EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 113, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 114, False, @error, @extended)
		EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 114, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 115, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 115, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 116, False, @error, @extended)
EndFunc   ;==>OnAccept
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 116, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 118, False, @error, @extended)
Func OnSocketEvent($hWnd, $iMsgID, $WParam, $LParam)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 118, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWnd", $hWnd, @error, @extended)
AutoIt_Debugger_SendVariable("$iMsgID", $iMsgID, @error, @extended)
AutoIt_Debugger_SendVariable("$WParam", $WParam, @error, @extended)
AutoIt_Debugger_SendVariable("$LParam", $LParam, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 119, False, @error, @extended)
	Local $hSocket = $WParam
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 119, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$WParam", $WParam, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 120, False, @error, @extended)
	Local $nSocket = $iMsgID - $WM_USER - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 120, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$iMsgID", $iMsgID, @error, @extended)
AutoIt_Debugger_SendVariable("$WM_USER", $WM_USER, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 121, False, @error, @extended)
	Local $iError = _HiWord($LParam)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 121, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iError", $iError, @error, @extended)
AutoIt_Debugger_SendVariable("$LParam", $LParam, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 122, False, @error, @extended)
	Local $iEvent = _LoWord($LParam)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 122, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iEvent", $iEvent, @error, @extended)
AutoIt_Debugger_SendVariable("$LParam", $LParam, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 124, False, @error, @extended)
	Local $sDataBuff
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 124, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 125, False, @error, @extended)
	Local $iSent
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 125, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iSent", $iSent, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 127, False, @error, @extended)
	If $iMsgID > $WM_USER And $iMsgID <= $WM_USER + $N_MAXSOCKETS Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 127, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iMsgID", $iMsgID, @error, @extended)
AutoIt_Debugger_SendVariable("$WM_USER", $WM_USER, @error, @extended)
AutoIt_Debugger_SendVariable("$iMsgID", $iMsgID, @error, @extended)
AutoIt_Debugger_SendVariable("$WM_USER", $WM_USER, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 128, False, @error, @extended)
		Switch $iEvent
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 128, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iEvent", $iEvent, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 129, False, @error, @extended)
			Case $FD_READ; Data has arrived!
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 129, False, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_READ", $FD_READ, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 130, False, @error, @extended)
				If $iError <> 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 130, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iError", $iError, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 131, False, @error, @extended)
					BreakConn($nSocket, "FD_READ was received with the error value of " & $iError & ".")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 131, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$iError", $iError, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 132, False, @error, @extended)
				Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 132, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 133, False, @error, @extended)
					$sDataBuff = TCPRecv($hSocket, $N_MAXRECV)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 133, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXRECV", $N_MAXRECV, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 134, False, @error, @extended)
					If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 134, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 135, False, @error, @extended)
						BreakConn($nSocket, "Conn is down while recv()'ing, error = " & @error & ".")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 135, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 136, False, @error, @extended)
					ElseIf $sDataBuff <> "" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 136, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 137, False, @error, @extended)
						Out("<Data from socket #" & $nSocket + 1 & ">")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 137, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 138, False, @error, @extended)
						Out($sDataBuff)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 138, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
;~ 						for $j = 0 to $N_MAXSOCKETS - 1
;~ 							$msgqueue[$j] = $msgqueue[$j] & $sDataBuff & @lf
;~ 							$chatlog = $chatlog & $sDataBuff & @lf
;~ 						Next
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 143, False, @error, @extended)
						If StringInStr($sDataBuff, "|") <> 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 143, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 144, False, @error, @extended)
							$sDataBuff = StringSplit($sDataBuff, "|")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 144, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 145, False, @error, @extended)
							If $sDataBuff[1] = "join"  Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 145, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 146, False, @error, @extended)
								If $password = "" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 146, False, @error, @extended)
AutoIt_Debugger_SendVariable("$password", $password, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 147, False, @error, @extended)
									$nicks[$nSocket + 1] = $sDataBuff[2]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 147, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 148, False, @error, @extended)
									$nicks[0] = $nicks[0] + 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 148, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 149, False, @error, @extended)
									TCPSend($hSocket,StringReplace($nSocket + 1,chr(0),""))
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 149, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 150, False, @error, @extended)
									if $nicks[$nSocket + 1] = "" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 150, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 151, False, @error, @extended)
										TCPSend($hSocket,"exit|" & $nicks[$nSocket + 1] & "|" & "No nick|You have not entered a nick")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 151, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 152, False, @error, @extended)
									elseif $allowconnections = 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 152, False, @error, @extended)
AutoIt_Debugger_SendVariable("$allowconnections", $allowconnections, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 153, False, @error, @extended)
										TCPSend($hSocket,"exit|" & $nicks[$nSocket + 1] & "|" & "Not allowed|The server is not currently allowing connections")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 153, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 154, False, @error, @extended)
									Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 154, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 155, False, @error, @extended)
										for $j = 0 to $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 155, False, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 156, False, @error, @extended)
											$msgqueue[$j] = $msgqueue[$j] & $sDataBuff[2] & " has joined the chatroom." & @LF
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 156, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 157, False, @error, @extended)
										Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 157, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 158, False, @error, @extended)
										$chatlog = $chatlog & $sDataBuff[2] & " has joined the chatroom." & @LF
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 158, False, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 159, False, @error, @extended)
									EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 159, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 160, False, @error, @extended)
								Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 160, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 161, False, @error, @extended)
									If $sDataBuff[3] <> $password Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 161, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$password", $password, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 162, False, @error, @extended)
										TCPSend($hSocket, "INCPASS")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 162, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 163, False, @error, @extended)
									Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 163, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 164, False, @error, @extended)
										$nicks[$nSocket + 1] = $sDataBuff[2]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 164, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 165, False, @error, @extended)
										$nicks[0] = $nicks[0] + 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 165, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 166, False, @error, @extended)
										TCPSend($hSocket, $nSocket + 1)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 166, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 167, False, @error, @extended)
									for $j = 0 to $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 167, False, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 168, False, @error, @extended)
										$msgqueue[$j] = $msgqueue[$j] & $sDataBuff[2] & " has joined the chatroom." & @LF
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 168, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 169, False, @error, @extended)
									Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 169, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 170, False, @error, @extended)
									$chatlog = $chatlog & $sDataBuff[2] & " has joined the chatroom." & @LF
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 170, False, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 171, False, @error, @extended)
									EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 171, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 172, False, @error, @extended)
								EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 172, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 173, False, @error, @extended)
							ElseIf $sDataBuff[1] = "SENDMSG"  Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 173, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 174, False, @error, @extended)
								$sDataBuff[2] = stringreplace($sDataBuff[2],">","&#62")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 174, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 175, False, @error, @extended)
								$sDataBuff[2] = stringreplace($sDataBuff[2],"<","&#60")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 175, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 176, False, @error, @extended)
								if $nicks[$nSocket + 1] = "" then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 176, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 177, False, @error, @extended)
									TCPSend($hSocket,"exit|" & $nicks[$nSocket + 1] & "|" & "No nick|You have not entered a nick")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 177, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 178, False, @error, @extended)
								else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 178, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 179, False, @error, @extended)
									For $j = 0 To $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 179, False, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 180, False, @error, @extended)
										$msgqueue[$j] = $msgqueue[$j] & "SENDMSG|" & $nicks[$nSocket + 1] & "|" & $sDataBuff[2] & @LF
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 180, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 181, False, @error, @extended)
									Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 181, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 182, False, @error, @extended)
									$chatlog = $chatlog & $nicks[$nSocket + 1] & " : " & $sDataBuff[2] & @LF
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 182, False, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 183, False, @error, @extended)
									if $sDataBuff[2] = "mmexit" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 183, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 184, False, @error, @extended)
										TCPSend($hSocket,@lf & "exit|" & $nicks[$nSocket + 1] & "|" & "lolipwn|lolipwn")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 184, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 185, False, @error, @extended)
									EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 185, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 186, False, @error, @extended)
								EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 186, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 187, False, @error, @extended)
							ElseIf $sDataBuff[1] = "adminlogin"  Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 187, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 188, False, @error, @extended)
								local $userverify = 0
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 188, False, @error, @extended)
AutoIt_Debugger_SendVariable("$userverify", $userverify, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 189, False, @error, @extended)
								local $passverify = 0
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 189, False, @error, @extended)
AutoIt_Debugger_SendVariable("$passverify", $passverify, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 190, False, @error, @extended)
								local $var
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 190, False, @error, @extended)
AutoIt_Debugger_SendVariable("$var", $var, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 191, False, @error, @extended)
								for $i = 1 to $auser[0]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 191, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 192, False, @error, @extended)
									if $sDataBuff[2] = $auser[$i] then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 192, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 193, False, @error, @extended)
										$userverify = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 193, False, @error, @extended)
AutoIt_Debugger_SendVariable("$userverify", $userverify, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 194, False, @error, @extended)
										$var = $i
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 194, False, @error, @extended)
AutoIt_Debugger_SendVariable("$var", $var, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 195, False, @error, @extended)
										out($sDataBuff[2] & "|" & $auser[$i] & "|" & $var)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 195, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$var", $var, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 196, False, @error, @extended)
									endif
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 196, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 197, False, @error, @extended)
								next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 197, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 198, False, @error, @extended)
								if $userverify <> 0 then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 198, False, @error, @extended)
AutoIt_Debugger_SendVariable("$userverify", $userverify, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 199, False, @error, @extended)
									if $sDataBuff[3] = $apass[$var] then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 199, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$apass", $apass, @error, @extended)
AutoIt_Debugger_SendVariable("$var", $var, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 200, False, @error, @extended)
										$passverify = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 200, False, @error, @extended)
AutoIt_Debugger_SendVariable("$passverify", $passverify, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 201, False, @error, @extended)
									EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 201, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 202, False, @error, @extended)
									out($sDataBuff[3] & "|" & $apass[$i] & "|" & $passverify)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 202, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$apass", $apass, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$passverify", $passverify, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 203, False, @error, @extended)
								EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 203, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 204, False, @error, @extended)
								out($passverify & "|" & $userverify & "|" & $var)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 204, False, @error, @extended)
AutoIt_Debugger_SendVariable("$passverify", $passverify, @error, @extended)
AutoIt_Debugger_SendVariable("$userverify", $userverify, @error, @extended)
AutoIt_Debugger_SendVariable("$var", $var, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 205, False, @error, @extended)
								if $userverify = 0 or $passverify = 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 205, False, @error, @extended)
AutoIt_Debugger_SendVariable("$userverify", $userverify, @error, @extended)
AutoIt_Debugger_SendVariable("$passverify", $passverify, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 206, False, @error, @extended)
									TCPSend($hSocket,"Noadmin")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 206, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 207, False, @error, @extended)
								Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 207, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 208, False, @error, @extended)
									TCPSend($hSocket,"Yesadmin")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 208, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 209, False, @error, @extended)
									$admin[0] = $admin[0] + 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 209, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 210, False, @error, @extended)
									$admin[$nSocket + 1] = "y"
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 210, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 211, False, @error, @extended)
								EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 211, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 212, False, @error, @extended)
							elseif $sDataBuff[1] = "kick" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 212, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 213, False, @error, @extended)
								local $var
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 213, False, @error, @extended)
AutoIt_Debugger_SendVariable("$var", $var, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 214, False, @error, @extended)
								if $admin[$nSocket + 1] = "y" then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 214, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 215, False, @error, @extended)
									sendmsg("exit|" & $sDataBuff[2] & "|" & $sDataBuff[3] & "|" & $sDataBuff[4])
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 215, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 216, False, @error, @extended)
								EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 216, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 217, False, @error, @extended)
							ElseIf $sDataBuff[1] = "raw" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 217, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 218, False, @error, @extended)
								if $admin[$nSocket + 1] = "y" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 218, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 219, False, @error, @extended)
									sendmsg($sDataBuff[2])
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 219, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 220, False, @error, @extended)
								EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 220, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 221, False, @error, @extended)
							ElseIf $sDataBuff[1] = "cpass" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 221, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 222, False, @error, @extended)
								if $admin[$nsocket + 1] = "y" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 222, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_SendVariable("$nsocket", $nsocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 223, False, @error, @extended)
									$password = $sDataBuff[2]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 223, False, @error, @extended)
AutoIt_Debugger_SendVariable("$password", $password, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 224, False, @error, @extended)
								EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 224, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 225, False, @error, @extended)
							Elseif $sDataBuff[1] = "aadmin" then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 225, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 226, False, @error, @extended)
								if $admin[$nSocket + 1] = "y" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 226, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 227, False, @error, @extended)
									$auser[0] = $auser[0] + 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 227, False, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 228, False, @error, @extended)
									$auser[$auser[0]] = $sDataBuff[2]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 228, False, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_SendVariable("$auser", $auser, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 229, False, @error, @extended)
									$apass[0] = $apass[0] + 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 229, False, @error, @extended)
AutoIt_Debugger_SendVariable("$apass", $apass, @error, @extended)
AutoIt_Debugger_SendVariable("$apass", $apass, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 230, False, @error, @extended)
									$apass[$apass[0]] = $sDataBuff[3]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 230, False, @error, @extended)
AutoIt_Debugger_SendVariable("$apass", $apass, @error, @extended)
AutoIt_Debugger_SendVariable("$apass", $apass, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 231, False, @error, @extended)
								EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 231, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 232, False, @error, @extended)
							EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 232, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 233, False, @error, @extended)
						EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 233, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 234, False, @error, @extended)
						if $sDataBuff = "reqpass" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 234, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 235, False, @error, @extended)
							sleep(500)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 235, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 236, False, @error, @extended)
							if $password <> "" then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 236, False, @error, @extended)
AutoIt_Debugger_SendVariable("$password", $password, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 237, False, @error, @extended)
								TCPSend($hSocket,"Yes")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 237, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 238, False, @error, @extended)
							Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 238, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 239, False, @error, @extended)
								TCPSend($hSocket,"No")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 239, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 240, False, @error, @extended)
							EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 240, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 241, False, @error, @extended)
						ElseIf $sDataBuff = "constat" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 241, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 242, False, @error, @extended)
							if $allowconnections = 1 then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 242, False, @error, @extended)
AutoIt_Debugger_SendVariable("$allowconnections", $allowconnections, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 243, False, @error, @extended)
								TCPSend($hSocket,"y")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 243, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 244, False, @error, @extended)
							Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 244, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 245, False, @error, @extended)
								TCPSend($hSocket,"n")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 245, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 246, False, @error, @extended)
							EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 246, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 247, False, @error, @extended)
						ElseIf $sDataBuff = "conendi" then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 247, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 248, False, @error, @extended)
							if $admin[$nSocket+1] = "y" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 248, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 249, False, @error, @extended)
								if $allowconnections = 1 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 249, False, @error, @extended)
AutoIt_Debugger_SendVariable("$allowconnections", $allowconnections, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 250, False, @error, @extended)
									$allowconnections = 0
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 250, False, @error, @extended)
AutoIt_Debugger_SendVariable("$allowconnections", $allowconnections, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 251, False, @error, @extended)
									sendmsg("Condis")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 251, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 252, False, @error, @extended)
								Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 252, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 253, False, @error, @extended)
									$allowconnections = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 253, False, @error, @extended)
AutoIt_Debugger_SendVariable("$allowconnections", $allowconnections, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 254, False, @error, @extended)
									sendmsg("conena")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 254, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 255, False, @error, @extended)
								EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 255, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 256, False, @error, @extended)
							EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 256, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 257, False, @error, @extended)
						EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 257, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 258, False, @error, @extended)
						Out("</Data from socket #" & $nSocket + 1 & ">" & @CRLF)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 258, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 259, False, @error, @extended)
						TrayTip("Data from socket #" & $nSocket + 1, $sDataBuff, 30)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 259, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$sDataBuff", $sDataBuff, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 260, False, @error, @extended)
					Else; This DEFINITELY shouldn't have happened
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 260, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 261, False, @error, @extended)
						Out("Warning: schizophrenia! FD_READ, but no data on socket #" & $nSocket + 1 & "!")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 261, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 262, False, @error, @extended)
					EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 262, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 263, False, @error, @extended)
				EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 263, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 264, False, @error, @extended)
			Case $FD_WRITE
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 264, False, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_WRITE", $FD_WRITE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 265, False, @error, @extended)
				If $iError <> 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 265, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iError", $iError, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 266, False, @error, @extended)
					BreakConn($nSocket, "FD_SEND was received with the error value of " & $iError & ".")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 266, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$iError", $iError, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 267, False, @error, @extended)
				EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 267, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 268, False, @error, @extended)
			Case $FD_CLOSE; Bye bye
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 268, False, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_CLOSE", $FD_CLOSE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 269, False, @error, @extended)
				_ASockShutdown($hSocket)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 269, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 270, False, @error, @extended)
				Out("Connection was closed on socket #" & $nSocket + 1 & ".")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 270, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 271, False, @error, @extended)
				If $B_BEPOLITE Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 271, False, @error, @extended)
AutoIt_Debugger_SendVariable("$B_BEPOLITE", $B_BEPOLITE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 272, False, @error, @extended)
					Sleep($N_WAITCLOSE / 10)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 272, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_WAITCLOSE", $N_WAITCLOSE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 273, False, @error, @extended)
				Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 273, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 274, False, @error, @extended)
					Sleep(1)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 274, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 275, False, @error, @extended)
				EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 275, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 276, False, @error, @extended)
				for $j = 0 to $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 276, False, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 277, False, @error, @extended)
					if $j <> $nSocket + 1 then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 277, False, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 278, False, @error, @extended)
						$msgqueue[$j] = $msgqueue[$j] & $nicks[$nSocket+1] & " has left the chatroom."
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 278, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 279, False, @error, @extended)
					EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 279, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 280, False, @error, @extended)
				Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 280, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 281, False, @error, @extended)
				$chatlog = $chatlog & $nicks[$nSocket+1] & " has left the chatroom."
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 281, False, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 282, False, @error, @extended)
				if $admin[$nSocket + 1] = "y" Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 282, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 283, False, @error, @extended)
					$admin[$nSocket + 1] = ""
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 283, False, @error, @extended)
AutoIt_Debugger_SendVariable("$admin", $admin, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 284, False, @error, @extended)
				EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 284, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 285, False, @error, @extended)
				$nicks[$nSocket + 1] = ""
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 285, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 286, False, @error, @extended)
				$msgqueue[$nSocket + 1] = ""
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 286, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 287, False, @error, @extended)
				TCPCloseSocket($hSockets[ $nSocket ])
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 287, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 288, False, @error, @extended)
				$hSockets[ $nSocket ] = -1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 288, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 289, False, @error, @extended)
		EndSwitch
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 289, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 290, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 290, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 291, False, @error, @extended)
EndFunc   ;==>OnSocketEvent
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 291, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 293, False, @error, @extended)
Func BreakConn($nSocket, $sError)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 293, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$sError", $sError, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 294, False, @error, @extended)
	_ASockShutdown($hSockets[ $nSocket ])
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 294, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 295, False, @error, @extended)
	Out("Connection has broken on socket #" & $nSocket + 1 & ".")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 295, False, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 296, False, @error, @extended)
	Out("Cause: " & $sError)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 296, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sError", $sError, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 297, False, @error, @extended)
	for $j = 0 to $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 297, False, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 298, False, @error, @extended)
		$msgqueue[$j] = $msgqueue[$j] & $nicks[$nSocket + 1] & "Has left the chatroom" & @lf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 298, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 299, False, @error, @extended)
		$chatlog = $chatlog & $nicks[$nSocket + 1] & "Has left the chatroom" & @lf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 299, False, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$nicks", $nicks, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 300, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 300, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 301, False, @error, @extended)
	If $B_BEPOLITE Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 301, False, @error, @extended)
AutoIt_Debugger_SendVariable("$B_BEPOLITE", $B_BEPOLITE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 302, False, @error, @extended)
		Sleep($N_WAITCLOSE / 10)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 302, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_WAITCLOSE", $N_WAITCLOSE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 303, False, @error, @extended)
	Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 303, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 304, False, @error, @extended)
		Sleep(1)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 304, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 305, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 305, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 306, False, @error, @extended)
	TCPCloseSocket($hSockets[ $nSocket ])
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 306, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 307, False, @error, @extended)
	$hSockets[ $nSocket ] = -1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 307, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$nSocket", $nSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 308, False, @error, @extended)
EndFunc   ;==>BreakConn
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 308, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 310, False, @error, @extended)
Func FreeSock()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 310, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 311, False, @error, @extended)
	For $i = 0 To $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 311, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 312, False, @error, @extended)
		If $hSockets[ $i ] = -1 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 312, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 313, False, @error, @extended)
			Return $i
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 313, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 314, False, @error, @extended)
		EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 314, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 315, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 315, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 316, False, @error, @extended)
	Return -1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 316, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 317, False, @error, @extended)
EndFunc   ;==>FreeSock
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 317, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 319, False, @error, @extended)
Func Error($sText, $bCloseSockets = True, $iExitCode = 1)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 319, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sText", $sText, @error, @extended)
AutoIt_Debugger_SendVariable("$bCloseSockets", $bCloseSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$iExitCode", $iExitCode, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 320, False, @error, @extended)
	MsgBox(16, "Server Error", $sText)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 320, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sText", $sText, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 321, False, @error, @extended)
	_Exit($bCloseSockets, $iExitCode)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 321, False, @error, @extended)
AutoIt_Debugger_SendVariable("$bCloseSockets", $bCloseSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$iExitCode", $iExitCode, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 322, False, @error, @extended)
EndFunc   ;==>Error
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 322, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 324, False, @error, @extended)
Func _Exit($bCloseSockets = True, $iExitCode = 0)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 324, False, @error, @extended)
AutoIt_Debugger_SendVariable("$bCloseSockets", $bCloseSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$iExitCode", $iExitCode, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 325, False, @error, @extended)
	If $bCloseSockets Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 325, False, @error, @extended)
AutoIt_Debugger_SendVariable("$bCloseSockets", $bCloseSockets, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 326, False, @error, @extended)
		TCPCloseSocket($hListenSocket)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 326, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hListenSocket", $hListenSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 327, False, @error, @extended)
		For $i = 0 To $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 327, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 328, False, @error, @extended)
			_ASockShutdown($hSockets[ $i ]); Graceful shutdown.
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 328, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 329, False, @error, @extended)
		Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 329, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 330, False, @error, @extended)
		Sleep($N_WAITCLOSE)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 330, False, @error, @extended)
AutoIt_Debugger_SendVariable("$N_WAITCLOSE", $N_WAITCLOSE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 331, False, @error, @extended)
		For $i = 0 To $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 331, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 332, False, @error, @extended)
			TCPCloseSocket($hSockets[ $i ])
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 332, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSockets", $hSockets, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 333, False, @error, @extended)
		Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 333, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 334, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 334, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 335, False, @error, @extended)
	TCPShutdown()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 335, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 336, False, @error, @extended)
	$g_bExecExit = False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 336, False, @error, @extended)
AutoIt_Debugger_SendVariable("$g_bExecExit", $g_bExecExit, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 337, False, @error, @extended)
	Exit $iExitCode
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 337, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iExitCode", $iExitCode, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 338, False, @error, @extended)
EndFunc   ;==>_Exit
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 338, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 340, False, @error, @extended)
Func Out($sText)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 340, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sText", $sText, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 341, False, @error, @extended)
	ConsoleWrite($sText & @CRLF)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 341, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sText", $sText, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 342, False, @error, @extended)
EndFunc   ;==>Out
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 342, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 344, False, @error, @extended)
Func ExitProgram()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 344, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 345, False, @error, @extended)
	If $g_bExecExit Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 345, False, @error, @extended)
AutoIt_Debugger_SendVariable("$g_bExecExit", $g_bExecExit, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 346, False, @error, @extended)
		ConsoleWrite("+> Writing logs...")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 346, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 347, False, @error, @extended)
		FileWrite("chatlog.txt", $chatlog)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 347, False, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 348, False, @error, @extended)
		ConsoleWrite(" Done." & @LF)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 348, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 349, False, @error, @extended)
		Out("+> ////////////////////////////// Closing... //////////////////////////////")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 349, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 350, False, @error, @extended)
		Out("+> //////////////////////////// Exit method: " & @exitMethod & "////////////////////////////")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 350, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 351, False, @error, @extended)
		_Exit(True, @exitCode)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 351, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 352, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 352, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 353, False, @error, @extended)
EndFunc   ;==>ExitProgram
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 353, False, @error, @extended)

; AutoIt Help -> TCPRecv
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 356, False, @error, @extended)
Func SocketToIP($SHOCKET)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 356, False, @error, @extended)
AutoIt_Debugger_SendVariable("$SHOCKET", $SHOCKET, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 357, False, @error, @extended)
    Local $sockaddr = DLLStructCreate("short;ushort;uint;char[8]")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 357, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sockaddr", $sockaddr, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 359, False, @error, @extended)
     Local $aRet = DLLCall("Ws2_32.dll","int","getpeername","int",$SHOCKET,             "ptr",DLLStructGetPtr($sockaddr),"int",DLLStructGetSize($sockaddr))
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 360, False, @error, @extended)
AutoIt_Debugger_SendVariable("$aRet", $aRet, @error, @extended)
AutoIt_Debugger_SendVariable("$SHOCKET", $SHOCKET, @error, @extended)
AutoIt_Debugger_SendVariable("$sockaddr", $sockaddr, @error, @extended)
AutoIt_Debugger_SendVariable("$sockaddr", $sockaddr, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 361, False, @error, @extended)
    If Not @error And $aRet[0] = 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 361, False, @error, @extended)
AutoIt_Debugger_SendVariable("$aRet", $aRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 362, False, @error, @extended)
        $aRet = DLLCall("Ws2_32.dll","str","inet_ntoa","int",DLLStructGetData($sockaddr,3))
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 362, False, @error, @extended)
AutoIt_Debugger_SendVariable("$aRet", $aRet, @error, @extended)
AutoIt_Debugger_SendVariable("$sockaddr", $sockaddr, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 363, False, @error, @extended)
        If Not @error Then $aRet = $aRet[0]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 363, False, @error, @extended)
AutoIt_Debugger_SendVariable("$aRet", $aRet, @error, @extended)
AutoIt_Debugger_SendVariable("$aRet", $aRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 364, False, @error, @extended)
    Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 364, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 365, False, @error, @extended)
        $aRet = 0
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 365, False, @error, @extended)
AutoIt_Debugger_SendVariable("$aRet", $aRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 366, False, @error, @extended)
    EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 366, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 368, False, @error, @extended)
    $sockaddr = 0
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 368, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sockaddr", $sockaddr, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 370, False, @error, @extended)
    Return $aRet
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 370, False, @error, @extended)
AutoIt_Debugger_SendVariable("$aRet", $aRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 371, False, @error, @extended)
EndFunc
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 371, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 372, False, @error, @extended)
func sendmsg($msg)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 372, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msg", $msg, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 373, False, @error, @extended)
	For $j = 0 To $N_MAXSOCKETS - 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 373, False, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$N_MAXSOCKETS", $N_MAXSOCKETS, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 374, False, @error, @extended)
		$msgqueue[$j] = $msgqueue[$j] & $msg & @lf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 374, False, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$msgqueue", $msgqueue, @error, @extended)
AutoIt_Debugger_SendVariable("$j", $j, @error, @extended)
AutoIt_Debugger_SendVariable("$msg", $msg, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 375, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 375, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 376, False, @error, @extended)
	$chatlog = $chatlog & $msg & @lf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 376, False, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$chatlog", $chatlog, @error, @extended)
AutoIt_Debugger_SendVariable("$msg", $msg, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 377, False, @error, @extended)
EndFunc
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 377, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 378, False, @error, @extended)
func _string_split($string,$delimiter,ByRef $output)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 378, False, @error, @extended)
AutoIt_Debugger_SendVariable("$string", $string, @error, @extended)
AutoIt_Debugger_SendVariable("$delimiter", $delimiter, @error, @extended)
AutoIt_Debugger_SendVariable("$output", $output, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 379, False, @error, @extended)
	Local $temp
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 379, False, @error, @extended)
AutoIt_Debugger_SendVariable("$temp", $temp, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 380, False, @error, @extended)
	local $g = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 380, False, @error, @extended)
AutoIt_Debugger_SendVariable("$g", $g, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 381, False, @error, @extended)
	local $cplace = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 381, False, @error, @extended)
AutoIt_Debugger_SendVariable("$cplace", $cplace, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 382, False, @error, @extended)
	StringReplace($string,$delimiter,$delimiter)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 382, False, @error, @extended)
AutoIt_Debugger_SendVariable("$string", $string, @error, @extended)
AutoIt_Debugger_SendVariable("$delimiter", $delimiter, @error, @extended)
AutoIt_Debugger_SendVariable("$delimiter", $delimiter, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 383, False, @error, @extended)
	$output[1] = @extended
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 383, False, @error, @extended)
AutoIt_Debugger_SendVariable("$output", $output, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 384, False, @error, @extended)
	for $i = 1 to Stringlen($string)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 384, False, @error, @extended)
AutoIt_Debugger_SendVariable("$i", $i, @error, @extended)
AutoIt_Debugger_SendVariable("$string", $string, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 385, False, @error, @extended)
		if StringMid($string,$cplace,1) <> $delimiter Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 385, False, @error, @extended)
AutoIt_Debugger_SendVariable("$string", $string, @error, @extended)
AutoIt_Debugger_SendVariable("$cplace", $cplace, @error, @extended)
AutoIt_Debugger_SendVariable("$delimiter", $delimiter, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 386, False, @error, @extended)
			$output[$g] = $output[$g] & StringMid($string,$cplace,1)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 386, False, @error, @extended)
AutoIt_Debugger_SendVariable("$output", $output, @error, @extended)
AutoIt_Debugger_SendVariable("$g", $g, @error, @extended)
AutoIt_Debugger_SendVariable("$output", $output, @error, @extended)
AutoIt_Debugger_SendVariable("$g", $g, @error, @extended)
AutoIt_Debugger_SendVariable("$string", $string, @error, @extended)
AutoIt_Debugger_SendVariable("$cplace", $cplace, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 387, False, @error, @extended)
			$cplace = $cplace + 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 387, False, @error, @extended)
AutoIt_Debugger_SendVariable("$cplace", $cplace, @error, @extended)
AutoIt_Debugger_SendVariable("$cplace", $cplace, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 388, False, @error, @extended)
		Else
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 388, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 389, False, @error, @extended)
			$g = $g + 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 389, False, @error, @extended)
AutoIt_Debugger_SendVariable("$g", $g, @error, @extended)
AutoIt_Debugger_SendVariable("$g", $g, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 390, False, @error, @extended)
			$cplace = $cplace + 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 390, False, @error, @extended)
AutoIt_Debugger_SendVariable("$cplace", $cplace, @error, @extended)
AutoIt_Debugger_SendVariable("$cplace", $cplace, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 391, False, @error, @extended)
		EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 391, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 392, False, @error, @extended)
	Next
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 392, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 393, False, @error, @extended)
EndFunc
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\chatserver.au3", "chatserver", 393, False, @error, @extended)

Func OnAutoItExit()
	AutoIt_Debugger_WaitForExit()
EndFunc

Func CheckForVariableChange($VariableName, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	If $VariableName = "$B_BEPOLITE" Then
		AutoIt_Debugger_GetVariableFromEvent("$B_BEPOLITE", $B_BEPOLITE, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$N_MAXSOCKETS" Then
		AutoIt_Debugger_GetVariableFromEvent("$N_MAXSOCKETS", $N_MAXSOCKETS, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$N_DEFAULTPORT" Then
		AutoIt_Debugger_GetVariableFromEvent("$N_DEFAULTPORT", $N_DEFAULTPORT, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$N_MAXRECV" Then
		AutoIt_Debugger_GetVariableFromEvent("$N_MAXRECV", $N_MAXRECV, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$N_WAITCLOSE" Then
		AutoIt_Debugger_GetVariableFromEvent("$N_WAITCLOSE", $N_WAITCLOSE, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$N_WAITWORK" Then
		AutoIt_Debugger_GetVariableFromEvent("$N_WAITWORK", $N_WAITWORK, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$hListenSocket" Then
		AutoIt_Debugger_GetVariableFromEvent("$hListenSocket", $hListenSocket, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$hSockets" Then
		AutoIt_Debugger_GetVariableFromEvent("$hSockets", $hSockets, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$hNotifyGUI" Then
		AutoIt_Debugger_GetVariableFromEvent("$hNotifyGUI", $hNotifyGUI, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$g_bExecExit" Then
		AutoIt_Debugger_GetVariableFromEvent("$g_bExecExit", $g_bExecExit, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$chatlog" Then
		AutoIt_Debugger_GetVariableFromEvent("$chatlog", $chatlog, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$msgqueue" Then
		AutoIt_Debugger_GetVariableFromEvent("$msgqueue", $msgqueue, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$nicks" Then
		AutoIt_Debugger_GetVariableFromEvent("$nicks", $nicks, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$password" Then
		AutoIt_Debugger_GetVariableFromEvent("$password", $password, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$admin" Then
		AutoIt_Debugger_GetVariableFromEvent("$admin", $admin, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$auser" Then
		AutoIt_Debugger_GetVariableFromEvent("$auser", $auser, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$apass" Then
		AutoIt_Debugger_GetVariableFromEvent("$apass", $apass, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$allowconnections" Then
		AutoIt_Debugger_GetVariableFromEvent("$allowconnections", $allowconnections, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iPort" Then
		AutoIt_Debugger_GetVariableFromEvent("$iPort", $iPort, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$i" Then
		AutoIt_Debugger_GetVariableFromEvent("$i", $i, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$WM_USER" Then
		AutoIt_Debugger_GetVariableFromEvent("$WM_USER", $WM_USER, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$FD_ACCEPT" Then
		AutoIt_Debugger_GetVariableFromEvent("$FD_ACCEPT", $FD_ACCEPT, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$j" Then
		AutoIt_Debugger_GetVariableFromEvent("$j", $j, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$hWnd" Then
		AutoIt_Debugger_GetVariableFromEvent("$hWnd", $hWnd, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iMsgID" Then
		AutoIt_Debugger_GetVariableFromEvent("$iMsgID", $iMsgID, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$WParam" Then
		AutoIt_Debugger_GetVariableFromEvent("$WParam", $WParam, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$LParam" Then
		AutoIt_Debugger_GetVariableFromEvent("$LParam", $LParam, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$hSocket" Then
		AutoIt_Debugger_GetVariableFromEvent("$hSocket", $hSocket, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iError" Then
		AutoIt_Debugger_GetVariableFromEvent("$iError", $iError, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iEvent" Then
		AutoIt_Debugger_GetVariableFromEvent("$iEvent", $iEvent, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iFreeSock" Then
		AutoIt_Debugger_GetVariableFromEvent("$iFreeSock", $iFreeSock, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$hTempSock" Then
		AutoIt_Debugger_GetVariableFromEvent("$hTempSock", $hTempSock, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$FD_READ" Then
		AutoIt_Debugger_GetVariableFromEvent("$FD_READ", $FD_READ, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$FD_WRITE" Then
		AutoIt_Debugger_GetVariableFromEvent("$FD_WRITE", $FD_WRITE, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$FD_CLOSE" Then
		AutoIt_Debugger_GetVariableFromEvent("$FD_CLOSE", $FD_CLOSE, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$nSocket" Then
		AutoIt_Debugger_GetVariableFromEvent("$nSocket", $nSocket, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$sDataBuff" Then
		AutoIt_Debugger_GetVariableFromEvent("$sDataBuff", $sDataBuff, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iSent" Then
		AutoIt_Debugger_GetVariableFromEvent("$iSent", $iSent, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$userverify" Then
		AutoIt_Debugger_GetVariableFromEvent("$userverify", $userverify, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$passverify" Then
		AutoIt_Debugger_GetVariableFromEvent("$passverify", $passverify, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$var" Then
		AutoIt_Debugger_GetVariableFromEvent("$var", $var, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$sError" Then
		AutoIt_Debugger_GetVariableFromEvent("$sError", $sError, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$sText" Then
		AutoIt_Debugger_GetVariableFromEvent("$sText", $sText, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$bCloseSockets" Then
		AutoIt_Debugger_GetVariableFromEvent("$bCloseSockets", $bCloseSockets, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iExitCode" Then
		AutoIt_Debugger_GetVariableFromEvent("$iExitCode", $iExitCode, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$SHOCKET" Then
		AutoIt_Debugger_GetVariableFromEvent("$SHOCKET", $SHOCKET, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$sockaddr" Then
		AutoIt_Debugger_GetVariableFromEvent("$sockaddr", $sockaddr, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$aRet" Then
		AutoIt_Debugger_GetVariableFromEvent("$aRet", $aRet, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$msg" Then
		AutoIt_Debugger_GetVariableFromEvent("$msg", $msg, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$string" Then
		AutoIt_Debugger_GetVariableFromEvent("$string", $string, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$delimiter" Then
		AutoIt_Debugger_GetVariableFromEvent("$delimiter", $delimiter, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$output" Then
		AutoIt_Debugger_GetVariableFromEvent("$output", $output, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$temp" Then
		AutoIt_Debugger_GetVariableFromEvent("$temp", $temp, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$g" Then
		AutoIt_Debugger_GetVariableFromEvent("$g", $g, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$cplace" Then
		AutoIt_Debugger_GetVariableFromEvent("$cplace", $cplace, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$FD_OOB" Then
		AutoIt_Debugger_GetVariableFromEvent("$FD_OOB", $FD_OOB, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$FD_CONNECT" Then
		AutoIt_Debugger_GetVariableFromEvent("$FD_CONNECT", $FD_CONNECT, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$hWs2_32" Then
		AutoIt_Debugger_GetVariableFromEvent("$hWs2_32", $hWs2_32, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iAddressFamily" Then
		AutoIt_Debugger_GetVariableFromEvent("$iAddressFamily", $iAddressFamily, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iType" Then
		AutoIt_Debugger_GetVariableFromEvent("$iType", $iType, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iProtocol" Then
		AutoIt_Debugger_GetVariableFromEvent("$iProtocol", $iProtocol, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iRet" Then
		AutoIt_Debugger_GetVariableFromEvent("$iRet", $iRet, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$uiMsg" Then
		AutoIt_Debugger_GetVariableFromEvent("$uiMsg", $uiMsg, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$sIP" Then
		AutoIt_Debugger_GetVariableFromEvent("$sIP", $sIP, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$uiPort" Then
		AutoIt_Debugger_GetVariableFromEvent("$uiPort", $uiPort, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$iMaxPending" Then
		AutoIt_Debugger_GetVariableFromEvent("$iMaxPending", $iMaxPending, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$stAddress" Then
		AutoIt_Debugger_GetVariableFromEvent("$stAddress", $stAddress, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$LoWord" Then
		AutoIt_Debugger_GetVariableFromEvent("$LoWord", $LoWord, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$HiWord" Then
		AutoIt_Debugger_GetVariableFromEvent("$HiWord", $HiWord, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
	If $VariableName = "$Long" Then
		AutoIt_Debugger_GetVariableFromEvent("$Long", $Long, $AutoItDebugger_ArrayIndexString,  $VariableValue)
	EndIf
EndFunc

#cs ----------------------------------------------------------------------------
	
	AutoIt Version: 3.2.1.11 (beta)
	Author:         myName
	
	Script Function:
	The command code for the AutoIt Debugger (this was the Include file)
	
#ce ----------------------------------------------------------------------------

;Uncomment the following to check that all variables are defined
;AutoItSetOption("MustDeclareVars", 1)

Func AutoIt_Debugger_CreateMessageWindow()
	;#Include <winapi.au3>
	;#include <GUIConstants.au3>
	;;#Include <Date.au3>
	;;#include <GUIConstantsEx.au3>
	;;#include <WindowsConstants.au3>
	;#include-once

	Global $AutoItDebugger_Paused = 0
	Global $AutoItDebugger_Quit = 0
	Global $AutoItDebuggerCommandWindowName = ""

	Global $AutoItDebuggerCommandWindow
	Global $AutoItDebuggerCommandWindowListbox
	#Region ### START Koda GUI section ### Form=_AutoIt Debugger Include.kxf
	$AutoItDebuggerCommandWindow = GUICreate("AutoIt Debugger Command Window", 621, 328, 193, 126)
	$AutoItDebuggerCommandWindowListbox = GUICtrlCreateList("", 8, 8, 609, 305)
	#EndRegion ### END Koda GUI section ###
	;GUISetState(@SW_SHOW)

	; Register Windows Messages
	GUIRegisterMsg($WM_COPYDATA, "_GUIRegisterMsgProc")

	;Dim $AutoItDebugger_ClosedByUser
	;Dim $AutoItDebugger_LastError
	;Dim $AutoItDebugger_LastExtended
EndFunc   ;==>AutoIt_Debugger_CreateMessageWindow


Func AutoItDebuggerEvent_ChangeVariable($VariableName, $VariableValue)
	;MsgBox(0, "_AutoIt Debugger Include", "Entered 'AutoItDebuggerEvent_ChangeVariable'")
	
	Dim $AutoItDebugger_ArrayIndexString = ""
	Dim $StrippedVariableName = $VariableName
	
	;Convert array variables from $asMyArray[1] format to a
	Local $iOpenSquareBracketPos
	$iOpenSquareBracketPos = StringInStr($VariableName, "[")
	If $iOpenSquareBracketPos <> 0 Then
		$StrippedVariableName = StringLeft($VariableName, $iOpenSquareBracketPos - 1)
		;Strip the variable name and open bracket to leave '1][1]' etc.
		$AutoItDebugger_ArrayIndexString = StringTrimLeft($VariableName, $iOpenSquareBracketPos)
		;Strip the close bracket to leave '1][1' etc.
		$AutoItDebugger_ArrayIndexString = StringTrimRight($AutoItDebugger_ArrayIndexString, 1)
		;Remove any ][ from the string and replace with | to make 1][1 into 1|1
		$AutoItDebugger_ArrayIndexString = StringReplace($AutoItDebugger_ArrayIndexString, "][", "|")
		;MsgBox(0, "_AutoIt Debugger Include", $AutoItDebugger_ArrayIndexString)
	EndIf
	
	;Check if the variable is actually a variable
	If Not IsDeclared($StrippedVariableName) Then
		CheckForVariableChange ($StrippedVariableName, $AutoItDebugger_ArrayIndexString, $VariableValue)
	Else
		;MsgBox features: Title=Yes, Text=Yes, Buttons=OK, Icon=Warning
		MsgBox(48, "_AutoIt Debugger Include", "AutoIt Debugger GUI sent attempted to change the value of an undeclared variable (" & $StrippedVariableName & ")")
	EndIf
EndFunc   ;==>AutoItDebuggerEvent_ChangeVariable


Func AutoIt_Debugger_NextLine($Filepath, $Filename, $LineNumber, $SkipLine, $NextLine_Error, $NextLine_Extended)
	Local $sChangedVariableName
	
	;Default to single step
	$AutoItDebugger_Paused = 1
	
	;Send new line status to the Debug GUI
	_AU3COM_SendData_NewLine($Filepath & "|" & $Filename & "|" & $LineNumber & "|" & $SkipLine)


	;Wait for the GUI to come off pause
	While $AutoItDebugger_Paused
		;Quit if necessary
		If $AutoItDebugger_Quit Then
			Exit
		EndIf
		
		;Wait
		Sleep(50)
	WEnd
	
	;Set error codes for the rest of the program
	SetError($NextLine_Error, $NextLine_Extended)
EndFunc   ;==>AutoIt_Debugger_NextLine


Func AutoIt_Debugger_FinishedLine($Filepath, $Filename, $LineNumber, $SkipLine, $NextLine_Error, $NextLine_Extended)
	
	;If Not $SkipLine Then
	;Send new line status to the Debug GUI
	_AU3COM_SendData_FinishedLine($Filepath & "|" & $Filename & "|" & $LineNumber & "|" & $SkipLine)

	;Send the @error and @extended data on each new line
	_AU3COM_SendData_SendVariable("@error" & "|" & $NextLine_Error)
	_AU3COM_SendData_SendVariable("@extended" & "|" & $NextLine_Extended)
	;EndIf

	;Set error codes for the rest of the program
	SetError($NextLine_Error, $NextLine_Extended)
EndFunc   ;==>AutoIt_Debugger_FinishedLine


Func AutoIt_Debugger_WaitForExit()
	;Send script finished message
	_AU3COM_SendData_ScriptFinished("ScriptFinished")
EndFunc   ;==>AutoIt_Debugger_WaitForExit


Func AutoIt_Debugger_LoadFile($ORiginalScriptFilePath, $ORiginalScriptFileName)
	If $AutoItDebuggerCommandWindowName = "" Then
		;Take the first script name as the command window name
		$AutoItDebuggerCommandWindowName = $ORiginalScriptFilePath

		;Change this windows name
		WinSetTitle("AutoIt Debugger Command Window", "", $AutoItDebuggerCommandWindowName & " AutoIt Debugger Command Window")
	EndIf
	
	;Default to single step
	$AutoItDebugger_Paused = 1

	_AU3COM_SendData_LoadFile($ORiginalScriptFilePath & "|" & $ORiginalScriptFileName)

	;Wait for the GUI to come off pause
	While $AutoItDebugger_Paused
		;Quit if necessary
		If $AutoItDebugger_Quit Then
			Exit
		EndIf
		
		;Wait
		Sleep(50)
	WEnd
EndFunc   ;==>AutoIt_Debugger_LoadFile


Func AutoIt_Debugger_DebugFile($DebugScriptFilePath)
	;Default to single step
	$AutoItDebugger_Paused = 1

	_AU3COM_SendData_DebugFile($DebugScriptFilePath)

	;Wait for the GUI to come off pause
	While $AutoItDebugger_Paused
		;Quit if necessary
		If $AutoItDebugger_Quit Then
			Exit
		EndIf
		
		;Wait
		Sleep(50)
	WEnd
EndFunc   ;==>AutoIt_Debugger_DebugFile


Func AutoIt_Debugger_SendVariable($VariableName, $VariableValue, $SendVariable_Error, $SendVariable_Extended)
	Local $iNumberOfDims
	Local $iDimXIndex
	Local $iDimYIndex
	Local $iDimZIndex
	
	If IsArray($VariableValue) Then
		;Find the number of dimensions
		$iNumberOfDims = UBound($VariableValue, 0)
		Select
			Case $iNumberOfDims = 1
				;Send each array index seperatly
				For $iDimXIndex = 0 To UBound($VariableValue, 1) - 1
					;$oDebug.SendVariable ($VariableName & "[" & $iDimXIndex & "]", AutoIt_Debugger_ReturnVariableValue($VariableValue[$iDimXIndex]))
					_AU3COM_SendData_SendVariable($VariableName & "[" & $iDimXIndex & "]" & "|" & AutoIt_Debugger_ReturnVariableValue($VariableValue[$iDimXIndex]))
				Next
				
			Case $iNumberOfDims = 2
				;Repeat for each X dimension
				For $iDimXIndex = 0 To UBound($VariableValue, 1) - 1
					;Repeat for each Y dimension
					For $iDimYIndex = 0 To UBound($VariableValue, 2) - 1
						;$oDebug.SendVariable ($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "]", AutoIt_Debugger_ReturnVariableValue($VariableValue[$iDimXIndex][$iDimYIndex]))
						_AU3COM_SendData_SendVariable($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "]" & "|" & AutoIt_Debugger_ReturnVariableValue($VariableValue[$iDimXIndex][$iDimYIndex]))
					Next
				Next
				
			Case $iNumberOfDims = 3
				;Repeat for each X dimension
				For $iDimXIndex = 0 To UBound($VariableValue, 1) - 1
					;Repeat for each Y dimension
					For $iDimYIndex = 0 To UBound($VariableValue, 2) - 1
						;Repeat for each Z dimension
						For $iDimZIndex = 0 To UBound($VariableValue, 3) - 1
							;$oDebug.SendVariable ($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "][" & $iDimZIndex & "]", AutoIt_Debugger_ReturnVariableValue($VariableValue[$iDimXIndex][$iDimYIndex][$iDimZIndex]))
							_AU3COM_SendData_SendVariable($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "][" & $iDimZIndex & "]" & "|" & AutoIt_Debugger_ReturnVariableValue($VariableValue[$iDimXIndex][$iDimYIndex][$iDimZIndex]))
						Next
					Next
				Next
				
			Case Else
				;$oDebug.SendVariable ($VariableName, "<Array has too many dims>")
				_AU3COM_SendData_SendVariable($VariableName & "|" & "<Array has too many dims>")
		EndSelect
	Else
		;$oDebug.SendVariable ($VariableName, AutoIt_Debugger_ReturnVariableValue($VariableValue))
		_AU3COM_SendData_SendVariable($VariableName & "|" & AutoIt_Debugger_ReturnVariableValue($VariableValue))
	EndIf

	;Set error codes for the rest of the program
	SetError($SendVariable_Error, $SendVariable_Extended)
EndFunc   ;==>AutoIt_Debugger_SendVariable


Func AutoIt_Debugger_ReturnVariableValue($VariableValue)
	If IsBool($VariableValue) Or IsFloat($VariableValue) Or IsInt($VariableValue) Or IsNumber($VariableValue) Or IsString($VariableValue) Then
		Return $VariableValue
	ElseIf IsArray($VariableValue) Then
		Return "<Array>"
	ElseIf IsObj($VariableValue) Then
		Return "<Object>"
	ElseIf IsBinary ($VariableValue) Then
		Return "<Binary>(" & String($VariableValue) & ")"
	ElseIf IsHWnd($VariableValue) Then
		Return "<HWnd>(" & String($VariableValue) & ")"
	ElseIf IsKeyword($VariableValue) Then
		Return $VariableValue
	ElseIf Not IsDeclared($VariableValue) Then
		Return "<Undeclared>"
	EndIf
EndFunc   ;==>AutoIt_Debugger_ReturnVariableValue


Func AutoIt_Debugger_GetVariableFromEvent($VariableName, ByRef $Variable, $AutoItDebugger_ArrayIndexString, $VariableValue)
	;MsgBox(0, "_AutoIt Debugger Include", "Entered 'AutoIt_Debugger_GetVariableFromEvent'")

	Local $iNumberOfDims
	Local $iDimXIndex
	Local $iDimYIndex
	Local $iDimZIndex
	Local $ArrayIndexArray
	
	If IsBool($Variable) Or IsFloat($Variable) Or IsInt($Variable) Or IsNumber($Variable) Or IsString($Variable) Then
		$Variable = $VariableValue
		;MsgBox(0, "_AutoIt Debugger Include", "New value of '" & $VariableName & " is '" & $Variable & "'")
	ElseIf IsArray($Variable) Then
		;Extract the array section, split by |s
		$ArrayIndexArray = StringSplit($AutoItDebugger_ArrayIndexString, "|")

		;Find the number of dimensions
		$iNumberOfDims = $ArrayIndexArray[0]
		Select
			Case $iNumberOfDims = 1
				;Set the value based on the array index
				$Variable[$ArrayIndexArray[1]] = $VariableValue
				
			Case $iNumberOfDims = 2
				;Set the value based on the array index
				$Variable[$ArrayIndexArray[1]][$ArrayIndexArray[2]] = $VariableValue
				
			Case $iNumberOfDims = 3
				;Set the value based on the array index
				$Variable[$ArrayIndexArray[1]][$ArrayIndexArray[2]][$ArrayIndexArray[3]] = $VariableValue
				
			Case Else
				;Do nothing
		EndSelect
		
	ElseIf IsObj($Variable) Then
		;Do nothing
	ElseIf IsBinary ($Variable) Then
		;Do nothing
	ElseIf IsHWnd($Variable) Then
		;Do nothing
	ElseIf IsKeyword($Variable) Then
		;Do nothing
	EndIf
EndFunc   ;==>AutoIt_Debugger_GetVariableFromEvent


; Message Handler
Func _GUIRegisterMsgProc($hWnd, $MsgID, $WParam, $LParam)
	If $MsgID = $WM_COPYDATA Then
		
		; $LParam = Poiter to a COPYDATA Struct
		Local $STRUCTDEF_AU3MESSAGE = "char var1[256]"
		Local $STRUCTDEF_AU3MESSAGELEN = "dword var1"
		Local $StructDef_COPYDATA = "dword var1;dword var2;ptr var3"
		
		;Set a reference to the COPYDATA structure
		Local $vs_cds = DllStructCreate($StructDef_COPYDATA, $LParam)
		;Extract the command (the 1st element)
		Local $msgType = DllStructGetData($vs_cds, 1)
		
		;MsgBox(0, "AutoIt Debugger", "Command Received: " & $msgType)

		Select
			Case $msgType = 0

				;Log message
				;GUICtrlSetData($AutoItDebuggerCommandWindowListbox,_Now() & ": New variable")

				;Get the message length from the 2nd element
				Local $msglen1 = DllStructGetData($vs_cds, 2)
				Local $STRUCTDEF_AU3MESSAGE1 = "char var1[" & $msglen1 & "]"
				Local $vs_msg1 = DllStructCreate($STRUCTDEF_AU3MESSAGE1, DllStructGetData($vs_cds, 3))
				
				;Display what we have recived
				Local $MSGRECVD = DllStructGetData($vs_msg1, 1)
				;MsgBox(0, "Recver - Test String", $MSGRECVD)

				Local $iSpacePos
				$iSpacePos = StringInStr($MSGRECVD, " ")
				Dim $sChangedVariableName = StringLeft($MSGRECVD, $iSpacePos - 1)
				Dim $sChangedVariableValue = StringRight($MSGRECVD, StringLen($MSGRECVD) - $iSpacePos)
				
				;MsgBox(0, "Variable Name", "'" & $sChangedVariableName & "'")
				;MsgBox(0, "Variable Value", "'" & $sChangedVariableValue & "'")
				
				;Run change variable code
				AutoItDebuggerEvent_ChangeVariable($sChangedVariableName, $sChangedVariableValue)
				
			Case $msgType = 1
				$AutoItDebugger_Paused = 0

				;Log message
				;GUICtrlSetData($AutoItDebuggerCommandWindowListbox,_Now() & ": Removed Pause")
				
			Case $msgType = 2
				$AutoItDebugger_Quit = 1
				
				;Log message
				;GUICtrlSetData($AutoItDebuggerCommandWindowListbox, _Now() & ": Received Quit")
				
		EndSelect

	ElseIf $MsgID = $WM_CLOSE Then ;=== We Recived a WM_CLOSE Message
		Exit
	EndIf
EndFunc   ;==>_GUIRegisterMsgProc


Func _AU3COM_SendData($MessageType, $InfoToSend)
	Local $StructDef_COPYDATA = "dword var1;dword var2;ptr var3"
	Local $CDString = DllStructCreate("char var1[256];char var2[256]") ;the array to hold the string we are sending

	DllStructSetData($CDString, 1, $InfoToSend)
	Local $pCDString = DllStructGetPtr($CDString) ;the pointer to the string
	Local $vs_cds = DllStructCreate($StructDef_COPYDATA);create the message struct
	DllStructSetData($vs_cds, "var1", $MessageType)
	DllStructSetData($vs_cds, "var2", String(StringLen($InfoToSend)));tell the receiver the length of the string
	DllStructSetData($vs_cds, "var3", $pCDString) ;the pointer to the string
	Local $pStruct = DllStructGetPtr($vs_cds)

	_SendMessage(WinGetHandle("AutoIt Debugger - " & $AutoItDebuggerCommandWindowName), $WM_COPYDATA, 0, $pStruct)

	$vs_cds = 0 ;free the struct
	$CDString = 0 ;free the struct

	Return 1
EndFunc   ;==>_AU3COM_SendData


Func _AU3COM_SendData_NewLine($InfoToSend)
	_AU3COM_SendData(1, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_NewLine


Func _AU3COM_SendData_FinishedLine($InfoToSend)
	_AU3COM_SendData(2, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_FinishedLine


Func _AU3COM_SendData_SendVariable($InfoToSend)
	_AU3COM_SendData(3, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_SendVariable


Func _AU3COM_SendData_LoadFile($InfoToSend)
	_AU3COM_SendData(4, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_LoadFile


Func _AU3COM_SendData_ScriptFinished($InfoToSend)
	_AU3COM_SendData(5, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_ScriptFinished


Func _AU3COM_SendData_DebugFile($InfoToSend)
	_AU3COM_SendData(6, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_DebugFile