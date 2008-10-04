#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Change2CUI=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ASock.au3>
Const $WM_USER = 1024
;;;
Const $B_BEPOLITE = False
Const $N_MAXSOCKETS = 25
Const $N_DEFAULTPORT = 8234
Const $N_MAXRECV = 65536
Const $N_WAITCLOSE = 2000
Const $N_WAITWORK = 10
;;;
Dim $msgqueue[$N_MAXSOCKETS]
Dim $hListenSocket
Dim $hSockets[$N_MAXSOCKETS]
Dim $hNotifyGUI
Dim $g_bExecExit = True
Dim $w, $h, $bgcolor, $getcol = 0

Opt("OnExitFunc", "ExitProgram")
$w = InputBox("", "width")
$h = InputBox("", "height")
$bgcolor = Dec(InputBox("", "bgcolor formatis RRGGBB(in hex) Example FFFFFF"))
;;;
main()
;;;
Func main()
	Dim $iPort
	Dim $i
	;;;
	If Not TCPStartup() Then Error("WSAStartup() failed.", False)
	
	$hListenSocket = _ASocket()
	If @error Then Error("Socket creation failed.", False)
	
	$hNotifyGUI = GUICreate("Dummy Notify Window / " & TimerInit())
	_ASockSelect($hListenSocket, $hNotifyGUI, $WM_USER, $FD_ACCEPT)
	If @error Then Error("Error selecting FD_ACCEPT event.")
	GUIRegisterMsg($WM_USER, "OnAccept")
	
	For $i = 0 To $N_MAXSOCKETS - 1
		$hSockets[$i] = -1
		GUIRegisterMsg($WM_USER + 1 + $i, "OnSocketEvent")
	Next
	
	$iPort = InputBox("Listen Port", "Enter the port to listen to:", $N_DEFAULTPORT, " M5")
	If @error Then _Exit()
	
	_ASockListen($hListenSocket, "0.0.0.0", $iPort)
	If @error Then Error("Error trying to listen on port " & $iPort & ", INADDR_ANY." & @CRLF & "@error = " & @error & " @extended = " & @extended)
	
	Out("Have begun to listen on port " & $iPort & ", INADDR_ANY. Waiting...")
	
	; Place your code here.
	$i = 1
	dim $x=0, $y=0, $color = 0xFF00FF
	While 1
		$i += 1
		For $j = 0 To $N_MAXSOCKETS - 1
			If $hSockets[$j] <> -1 Then
				if $msgqueue[$j] <> "" then
						TCPSend($hSockets[$j],$msgqueue[$j])
						ConsoleWrite($msgqueue[$j] & @lf & @lf)
				EndIf
;~ 				TCPSend($hSockets[$j],$msgqueue[$j])
			EndIf
			$msgqueue[$j] = ""
		Next
		if $x = $w Then
			$x = 0
			$y = $y + 1
			if $y > $h Then
				$y = 0
				$x = 0
				$color = Random(0x000000,0xFFFFFF,1)
			EndIf
		Else
			$x = $x + 1
		EndIf
		sendta("Pixel|" & $color & '|' & $x & "|" & $y)
		Sleep($N_WAITWORK)
	WEnd
	; I presume that this code will not be executed.
	; Correct me if I'm wrong.
EndFunc   ;==>main

Func OnAccept($hWnd, $iMsgID, $WParam, $LParam)
	Local $hSocket = $WParam
	Local $iError = _HiWord($LParam)
	Local $iEvent = _LoWord($LParam)
	
	Local $iFreeSock
	Local $hTempSock
	
	If $iMsgID = $WM_USER Then
		If $iError <> 0 Then
			Error("OnAccept: error while listening or trying to listen!")
		EndIf
		$iFreeSock = FreeSock()
		If $iFreeSock = -1 Then; No vacancies!
			$hTempSock = TCPAccept($hSocket)
			If $hTempSock <> -1 Then
				TCPSend($hTempSock, "No vacancies!")
				_ASockShutdown($hTempSock)
				If $B_BEPOLITE Then
					Sleep($N_WAITCLOSE / 10)
				Else
					Sleep(1)
				EndIf
				TCPCloseSocket($hTempSock)
			EndIf
		Else
			$hSockets[$iFreeSock] = TCPAccept($hSocket)
			If $hSockets[$iFreeSock] = -1 Then; This shouldn't happen.
				Out("+> OnAccept: Hmm thought I'd catch a connection... Oh well.")
			Else
				Out("+> OnAccept: Accepted a connection on socket #" & $iFreeSock + 1 & " (socket " & $hSockets[$iFreeSock] & ")")
				TrayTip("Accepted a connection", "Socket #" & $iFreeSock + 1 & "; handle = " & $hSockets[$iFreeSock] & @CRLF & "IP address = " & SocketToIP($hSockets[$iFreeSock]), 30)
				_ASockSelect($hSockets[$iFreeSock], $hNotifyGUI, $WM_USER + $iFreeSock + 1, _
						BitOR($FD_READ, $FD_WRITE, $FD_CLOSE))
				If @error Then Error("Error selecting events on socket #" & $iFreeSock + 1 & ".")
			EndIf
		EndIf
	EndIf
EndFunc   ;==>OnAccept

Func OnSocketEvent($hWnd, $iMsgID, $WParam, $LParam)
	Local $hSocket = $WParam
	Local $nSocket = $iMsgID - $WM_USER - 1
	Local $iError = _HiWord($LParam)
	Local $iEvent = _LoWord($LParam)
	
	Local $sDataBuff
	Local $iSent
	
	If $iMsgID > $WM_USER And $iMsgID <= $WM_USER + $N_MAXSOCKETS Then
		Switch $iEvent
			Case $FD_READ; Data has arrived!
				If $iError <> 0 Then
					BreakConn($nSocket, "FD_READ was received with the error value of " & $iError & ".")
				Else
					$sDataBuff = TCPRecv($hSocket, $N_MAXRECV)
					$sDataBuff = StringSplit($sDataBuff, "|")
					If $sDataBuff[1] = "w" Then
						TCPSend($hSocket, $w)
					ElseIf $sDataBuff[1] = "h" Then
						TCPSend($hSocket, $h)
					ElseIf $sDataBuff[1] = "bgcolor" Then
						TCPSend($hSocket, $bgcolor)
					ElseIf $sDataBuff[1] = "allowt" Then
						TCPSend($hSocket, $getcol)
					ElseIf $sDataBuff[1] = "dot" Then
						sendta("Dot|" & $sDataBuff[2] & '|' & $sDataBuff[3] & "|" & $sDataBuff[4])
					ElseIf $sDataBuff[1] = "pixel" Then
						sendta("Pixel|" & $sDataBuff[2] & '|' & $sDataBuff[3] & "|" & $sDataBuff[4])
					EndIf
					If @error Then
						BreakConn($nSocket, "Conn is down while recv()'ing, error = " & @error & ".")
					ElseIf $sDataBuff <> "" Then
						Out("<Data from socket #" & $nSocket + 1 & ">")
						Out($sDataBuff)
						Out("</Data from socket #" & $nSocket + 1 & ">" & @CRLF)
						TrayTip("Data from socket #" & $nSocket + 1, $sDataBuff, 30)
					Else; This DEFINITELY shouldn't have happened
						Out("Warning: schizophrenia! FD_READ, but no data on socket #" & $nSocket + 1 & "!")
					EndIf
				EndIf
			Case $FD_WRITE
				If $iError <> 0 Then
					BreakConn($nSocket, "FD_SEND was received with the error value of " & $iError & ".")
				EndIf
			Case $FD_CLOSE; Bye bye
				_ASockShutdown($hSocket)
				Out("Connection was closed on socket #" & $nSocket + 1 & ".")
				If $B_BEPOLITE Then
					Sleep($N_WAITCLOSE / 10)
				Else
					Sleep(1)
				EndIf
				TCPCloseSocket($hSockets[$nSocket])
				$hSockets[$nSocket] = -1
		EndSwitch
	EndIf
EndFunc   ;==>OnSocketEvent

Func BreakConn($nSocket, $sError)
	_ASockShutdown($hSockets[$nSocket])
	Out("Connection has broken on socket #" & $nSocket + 1 & ".")
	Out("Cause: " & $sError)
	If $B_BEPOLITE Then
		Sleep($N_WAITCLOSE / 10)
	Else
		Sleep(1)
	EndIf
	TCPCloseSocket($hSockets[$nSocket])
	$hSockets[$nSocket] = -1
EndFunc   ;==>BreakConn

Func FreeSock()
	For $i = 0 To $N_MAXSOCKETS - 1
		If $hSockets[$i] = -1 Then
			Return $i
		EndIf
	Next
	Return -1
EndFunc   ;==>FreeSock

Func Error($sText, $bCloseSockets = True, $iExitCode = 1)
	MsgBox(16, "Server Error", $sText)
	_Exit($bCloseSockets, $iExitCode)
EndFunc   ;==>Error

Func _Exit($bCloseSockets = True, $iExitCode = 0)
	If $bCloseSockets Then
		TCPCloseSocket($hListenSocket)
		For $i = 0 To $N_MAXSOCKETS - 1
			_ASockShutdown($hSockets[$i]); Graceful shutdown.
		Next
		Sleep($N_WAITCLOSE)
		For $i = 0 To $N_MAXSOCKETS - 1
			TCPCloseSocket($hSockets[$i])
		Next
	EndIf
	TCPShutdown()
	$g_bExecExit = False
	Exit $iExitCode
EndFunc   ;==>_Exit

Func Out($sText)
	ConsoleWrite($sText & @CRLF)
EndFunc   ;==>Out

Func ExitProgram()
	If $g_bExecExit Then
		Out("+> ////////////////////////////// Closing... //////////////////////////////")
		Out("+> //////////////////////////// Exit method: " & @exitMethod & "////////////////////////////")
		_Exit(True, @exitCode)
	EndIf
EndFunc   ;==>ExitProgram

; AutoIt Help -> TCPRecv
Func SocketToIP($SHOCKET)
	Local $sockaddr = DllStructCreate("short;ushort;uint;char[8]")

	Local $aRet = DllCall("Ws2_32.dll", "int", "getpeername", "int", $SHOCKET, _
			"ptr", DllStructGetPtr($sockaddr), "int_ptr", DllStructGetSize($sockaddr))
	If Not @error And $aRet[0] = 0 Then
		$aRet = DllCall("Ws2_32.dll", "str", "inet_ntoa", "int", DllStructGetData($sockaddr, 3))
		If Not @error Then $aRet = $aRet[0]
	Else
		$aRet = "(Could not resolve)"
	EndIf

	$sockaddr = 0

	Return $aRet
EndFunc   ;==>SocketToIP
Func sendta($data)
	For $j = 0 To $N_MAXSOCKETS - 1
		$msgqueue[$j] = $msgqueue[$j] & $data & @lf
	Next
EndFunc