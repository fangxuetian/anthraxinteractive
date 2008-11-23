#RequireAdmin
#include <ASock.au3>
#include <Constants.au3>
#include <array.au3>
#include <WindowsConstants.au3>
;~ #NoTrayIcon
;~ Const $WM_USER = 1024
;;;
Const $B_BEPOLITE = False
Const $N_MAXSOCKETS = 25
Const $N_DEFAULTPORT = 42775
Const $N_MAXRECV = 65536
Const $N_WAITCLOSE = 2000
Const $N_WAITWORK = 10
;;;
Dim $hListenSocket
Dim $hSockets[$N_MAXSOCKETS]
Dim $hNotifyGUI
Dim $g_bExecExit = True
Global $chatlog
Global $msgqueue[1677715]
Global $nicks[1677715]
Global $password = ""
Global $admin[1677715]
Global $auser[1677715]
Global $apass[1677715]
Global $allowconnections = 1
$auser[0] = 2
$apass[0] = 2
$auser[1] = "mmavipc"
$apass[1] = "dyndns"
$auser[2] = "brad"
$apass[2] = "window"
$nicks[0] = 0
Opt("OnExitFunc", "ExitProgram")
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
	
	_ASockListen($hListenSocket, InputBox("IP", "Listen ip?"), $iPort)
	If @error Then Error("Error trying to listen on port " & $iPort & ", INADDR_ANY." & @CRLF & "@error = " & @error & " @extended = " & @extended)
	
	Out("Have begun to listen on port " & $iPort & ", INADDR_ANY. Waiting...")
	
	; Place your code here.
	$i = 1
	While 1
;~ 		Out("Doing serious work indeed... (" & $i & ")")
		$i += 1
		For $j = 0 To $N_MAXSOCKETS - 1
			If $hSockets[$j] <> -1 Then
				TCPSend($hSockets[$j], $msgqueue[$j])
			EndIf
			$msgqueue[$j] = ""
		Next
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
					If @error Then
						BreakConn($nSocket, "Conn is down while recv()'ing, error = " & @error & ".")
					ElseIf $sDataBuff <> "" Then
						Out("<Data from socket #" & $nSocket + 1 & ">")
						Out($sDataBuff)
;~ 						for $j = 0 to $N_MAXSOCKETS - 1
;~ 							$msgqueue[$j] = $msgqueue[$j] & $sDataBuff & @lf
;~ 							$chatlog = $chatlog & $sDataBuff & @lf
;~ 						Next
						If StringInStr($sDataBuff, "|") <> 0 Then
							$sDataBuff = StringSplit($sDataBuff, "|")
							If $sDataBuff[1] = "join" Then
								If $password = "" Then
									$nicks[$nSocket + 1] = $sDataBuff[2]
									$nicks[0] = $nicks[0] + 1
									TCPSend($hSocket, StringReplace($nSocket + 1, Chr(0), ""))
									If $nicks[$nSocket + 1] = "" Then
										TCPSend($hSocket, "exit|" & "No nick|You have not entered a nick")
									ElseIf $allowconnections = 0 Then
										TCPSend($hSocket, "exit|" & "Not allowed|The server is not currently allowing connections")
									Else
										For $j = 0 To $N_MAXSOCKETS - 1
											$msgqueue[$j] = $msgqueue[$j] & $sDataBuff[2] & " has joined the chatroom." & @LF
										Next
										$chatlog = $chatlog & $sDataBuff[2] & " has joined the chatroom." & @LF
									EndIf
								Else
									If $sDataBuff[3] <> $password Then
										TCPSend($hSocket, "INCPASS")
									Else
										$nicks[$nSocket + 1] = $sDataBuff[2]
										$nicks[0] = $nicks[0] + 1
										TCPSend($hSocket, $nSocket + 1)
										For $j = 0 To $N_MAXSOCKETS - 1
											$msgqueue[$j] = $msgqueue[$j] & $sDataBuff[2] & " has joined the chatroom." & @LF
										Next
										$chatlog = $chatlog & $sDataBuff[2] & " has joined the chatroom." & @LF
									EndIf
								EndIf
							ElseIf $sDataBuff[1] = "SENDMSG" Then
								$sDataBuff[2] = StringReplace($sDataBuff[2], ">", "&#62")
								$sDataBuff[2] = StringReplace($sDataBuff[2], "<", "&#60")
								If $nicks[$nSocket + 1] = "" Then
									TCPSend($hSocket, "exit|" & $nicks[$nSocket + 1] & "|" & "No nick|You have not entered a nick")
								Else
									For $j = 0 To $N_MAXSOCKETS - 1
										$msgqueue[$j] = $msgqueue[$j] & "SENDMSG|" & $nicks[$nSocket + 1] & "|" & $sDataBuff[2] & @LF
									Next
									$chatlog = $chatlog & $nicks[$nSocket + 1] & " : " & $sDataBuff[2] & @LF
									If $sDataBuff[2] = "mmexit" Then
										TCPSend($hSocket, @LF & "exit|" & $nicks[$nSocket + 1] & "|" & "lolipwn|lolipwn")
									EndIf
								EndIf
							ElseIf $sDataBuff[1] = "pm" Then
								$sDataBuff[3] = StringReplace($sDataBuff[3], ">", "&#62")
								$sDataBuff[3] = StringReplace($sDataBuff[3], "<", "&#60")
								TCPSend($hSockets[findsn($sDataBuff[2])], "SENDMSG|<b>PM</b> from " & $nicks[$nSocket + 1] & "|" & $sDataBuff[3] & @LF)
							ElseIf $sDataBuff[1] = "adminlogin" Then
								Local $userverify = 0
								Local $passverify = 0
								Local $var
								For $i = 1 To $auser[0]
									If $sDataBuff[2] = $auser[$i] Then
										$userverify = 1
										$var = $i
										Out($sDataBuff[2] & "|" & $auser[$i] & "|" & $var)
									Else
										Out("myfurry butt|" & $sDataBuff[2] & $auser[$i])
									EndIf
								Next
								If $userverify <> 0 Then
									If $sDataBuff[3] = $apass[$var] Then
										$passverify = 1
									EndIf
									Out($sDataBuff[3] & "|" & $apass[$i] & "|" & $passverify)
								EndIf
								Out($passverify & "|" & $userverify & "|" & $var)
								If $userverify = 0 Or $passverify = 0 Then
									TCPSend($hSocket, "Noadmin")
									$admin[$nSocket + 1] = "n"
								Else
									TCPSend($hSocket, "Yesadmin")
									$admin[$nSocket + 1] = "y"
								EndIf
							ElseIf $sDataBuff[1] = "kick" Then
								If $admin[$nSocket + 1] = "y" Then
									TCPSend($hSockets[findsn($sDataBuff[2])], "exit|" & $sDataBuff[3] & "|" & $sDataBuff[4])
								EndIf
							ElseIf $sDataBuff[1] = "raw" Then
								If $admin[$nSocket + 1] = "y" Then
									sendmsg($sDataBuff[2])
								EndIf
							ElseIf $sDataBuff[1] = "cpass" Then
								If $admin[$nSocket + 1] = "y" Then
									$password = $sDataBuff[2]
								EndIf
							ElseIf $sDataBuff[1] = "aadmin" Then
								If $admin[$nSocket + 1] = "y" Then
									$auser[0] = $auser[0] + 1
									$auser[$auser[0]] = $sDataBuff[2]
									$apass[0] = $apass[0] + 1
									$apass[$apass[0]] = $sDataBuff[3]
								EndIf
							ElseIf $sDataBuff[1] = "dadmin" Then
								$un = $sDataBuff[2]
								If $admin[$nSocket + 1] = "y" Then
									Dim $var = 0
									For $i = 1 To $auser[0]
										If $auser[$i] = $un Then
											$var = $i
											ExitLoop
										EndIf
									Next
									If $var <> 0 Then
										$auser[0] = $auser[0] - 1
										$apass[0] = $apass[0] - 1
										_ArrayDelete($auser, $var)
										_ArrayDelete($apass, $var)
									EndIf
								EndIf
							EndIf
						EndIf
						If $sDataBuff = "reqpass" Then
							Sleep(500)
							If $password <> "" Then
								TCPSend($hSocket, "Yes")
							Else
								TCPSend($hSocket, "No")
							EndIf
						ElseIf $sDataBuff = "constat" Then
							If $allowconnections = 1 Then
								TCPSend($hSocket, "y")
							Else
								TCPSend($hSocket, "n")
							EndIf
						ElseIf $sDataBuff = "conendi" Then
							If $admin[$nSocket + 1] = "y" Then
								If $allowconnections = 1 Then
									$allowconnections = 0
									sendmsg("Condis")
								Else
									$allowconnections = 1
									sendmsg("conena")
								EndIf
							EndIf
						EndIf
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
				if $nicks[$nSocket + 1] <> "" then
				For $j = 0 To $N_MAXSOCKETS - 1
					If $j <> $nSocket + 1 Then
						$msgqueue[$j] = $msgqueue[$j] & $nicks[$nSocket + 1] & " has left the chatroom."
					EndIf
				Next
				$chatlog = $chatlog & $nicks[$nSocket + 1] & " has left the chatroom."
				endif
				If $admin[$nSocket + 1] = "y" Then
					$admin[$nSocket + 1] = ""
				EndIf
				$nicks[$nSocket + 1] = ""
				$msgqueue[$nSocket + 1] = ""
				TCPCloseSocket($hSockets[$nSocket])
				$hSockets[$nSocket] = -1
		EndSwitch
	EndIf
EndFunc   ;==>OnSocketEvent

Func BreakConn($nSocket, $sError)
	_ASockShutdown($hSockets[$nSocket])
	Out("Connection has broken on socket #" & $nSocket + 1 & ".")
	Out("Cause: " & $sError)
	For $j = 0 To $N_MAXSOCKETS - 1
		$msgqueue[$j] = $msgqueue[$j] & $nicks[$nSocket + 1] & "Has left the chatroom" & @LF
		$chatlog = $chatlog & $nicks[$nSocket + 1] & "Has left the chatroom" & @LF
	Next
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
		ConsoleWrite("+> Writing logs...")
		FileWrite("chatlog.txt", $chatlog)
		ConsoleWrite(" Done." & @LF)
		Out("+> ////////////////////////////// Closing... //////////////////////////////")
		Out("+> //////////////////////////// Exit method: " & @exitMethod & "////////////////////////////")
		_Exit(True, @exitCode)
	EndIf
EndFunc   ;==>ExitProgram

; AutoIt Help -> TCPRecv
Func SocketToIP($SHOCKET)
	Local $sockaddr = DllStructCreate("short;ushort;uint;char[8]")

	Local $aRet = DllCall("Ws2_32.dll", "int", "getpeername", "int", $SHOCKET, _
			"ptr", DllStructGetPtr($sockaddr), "int", DllStructGetSize($sockaddr))
	If Not @error And $aRet[0] = 0 Then
		$aRet = DllCall("Ws2_32.dll", "str", "inet_ntoa", "int", DllStructGetData($sockaddr, 3))
		If Not @error Then $aRet = $aRet[0]
	Else
		$aRet = 0
	EndIf

	$sockaddr = 0

	Return $aRet
EndFunc   ;==>SocketToIP
Func sendmsg($msg)
	For $j = 0 To $N_MAXSOCKETS - 1
		$msgqueue[$j] = $msgqueue[$j] & $msg & @LF
	Next
	$chatlog = $chatlog & $msg & @LF
EndFunc   ;==>sendmsg
Func _string_split($string, $delimiter, ByRef $output)
	Local $temp
	Local $g = 1
	Local $cplace = 1
	StringReplace($string, $delimiter, $delimiter)
	$output[1] = @extended
	For $i = 1 To StringLen($string)
		If StringMid($string, $cplace, 1) <> $delimiter Then
			$output[$g] = $output[$g] & StringMid($string, $cplace, 1)
			$cplace = $cplace + 1
		Else
			$g = $g + 1
			$cplace = $cplace + 1
		EndIf
	Next
EndFunc   ;==>_string_split
Func findsn($nick)
	$sn = 0
	For $i = 1 To $nicks[0]
		If $nicks[$i] = $nick Then
			$sn = $i
			ExitLoop
		EndIf
	Next
	If $sn = 0 Then
		$sn = 1
	EndIf
	Return $sn - 1
EndFunc   ;==>findsn