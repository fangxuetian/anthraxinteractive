#include <ASock.au3>
#include <Array.au3>
#include <string.au3>
#include "em.au3"
Const $WM_USER = 1024
;;;
Const $B_BEPOLITE = False
Const $N_MAXSOCKETS = 25
Const $N_DEFAULTPORT = 2121
Const $N_MAXRECV = 65536
Const $N_WAITCLOSE = 2000
Const $N_WAITWORK = 750
;~ $encryption = 0
;~ $pass = "lo9uz"
;;;
Dim $hListenSocket
Dim $hSockets[$N_MAXSOCKETS]
Dim $hNotifyGUI
Dim $g_bExecExit = True
Dim $file[101][7501]
$file [0][0] = 0
dim $fname
dim $fnamea[101]
dim $encryption[10000]
$encryption[0] = 0
dim $pass[10000]

Opt("OnExitFunc", "ExitProgram")
;~ $encryption = InputBox("encryption", "use encryption? 0 for no and 1 for yes")
;~ If $encryption = 1 Then
;~ 	$pass = InputBox("pass", 'pass no repeating character. the pass "lolz" would not would but the pass "loLz" would')
;~ EndIf

loadfile()
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
	While 1
		Out("Doing serious work indeed... (" & $i & ")")
		$i += 1
;~ 		For $j = 0 To $N_MAXSOCKETS - 1
;~ 			If $hSockets[ $j ] <> -1 Then
;~ 			EndIf
;~ 		Next
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
					$sDataBuff = BinaryToString(TCPRecv($hSocket, $N_MAXRECV,1))
					If @error Then
						BreakConn($nSocket, "Conn is down while recv()'ing, error = " & @error & ".")
					ElseIf $sDataBuff <> "" Then
						$sDataBuff = BinaryToString(sde($sDataBuff, "|"))
;~ 						Out( "<Data from socket #" & $nSocket + 1 & ">" )
						Out($sDataBuff)
;~ 						Out( "</Data from socket #" & $nSocket + 1 & ">" & @CRLF )
						TrayTip("Data from socket #" & $nSocket + 1, $sDataBuff, 30)
						If StringInStr($sDataBuff, "|") Then
							$sDataBuff = StringSplit($sDataBuff, "|")
							If $sDataBuff[1] = "reqp" Then
								TCPSend($hSocket, binary($file[$sDataBuff[2]][$sDataBuff[3]]))
							ElseIf $sDataBuff[1] = "reqfn" Then
								TCPSend($hSocket, binary($fname))
							ElseIf $sDataBuff[1] = "reqnp" Then
								TCPSend($hSocket, binary($file[$sDataBuff[2]][0]))
								ConsoleWrite($file[0][0] & @LF)
							ElseIf $sDataBuff[1] = "enc?" Then
								TCPSend($hSocket, binary($encryption[$sDataBuff[2]]))
							EndIf
						EndIf
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
			"ptr", DllStructGetPtr($sockaddr), "int", DllStructGetSize($sockaddr))
	If Not @error And $aRet[0] = 0 Then
		$aRet = DllCall("Ws2_32.dll", "str", "inet_ntoa", "int", DllStructGetData($sockaddr, 3))
		If Not @error Then $aRet = $aRet[0]
	Else
		$aRet = "(Could not resolve)"
	EndIf

	$sockaddr = 0

	Return $aRet
EndFunc   ;==>SocketToIP
Func _StringChop($string, $size, ByRef $array)
	$count = Ceiling(StringLen($string) / $size)
;~ 	MsgBox(0,"initnumc",$initnum)
	$start = 1
;~ 	MsgBox(0,"initnums",$initnum)
	For $i = 1 To $count
;~ 		MsgBox(0,"initnumi",$initnum)
		$array[$array[0][0]][$i] = StringMid($string, $start, $size)
		$start += $size
;~ 		MsgBox(0,"",$i & "/" &$count)
;~ 		_ArrayDisplay($array,$i & "/" & $count)
	Next
	$array[$array[0][0]][0] = $count
EndFunc   ;==>_StringChop
Func loadfile()
	$filename = FileOpenDialog("file to send",@ScriptDir,"(*.*) all")
	$fnamet = StringSplit($fileloc,"\")
	$fnamet = $fnamet[$fnamet[0]]
	$fname = $fname & $fnamet & ","
	$tempfile = FileRead($filename)
	$encryption[0] = $encryption[0] + 1
	$encryption[$encryption[0]] = InputBox("encryption", "use encryption? 0 for no and 1 for yes")
	If $encryption[$encryption[0]] = 1 Then
		$pass[$encryption[0]] = InputBox("pass", 'pass no repeating character. the pass "lolz" would not would but the pass "loLz" would')
	EndIf
	If $encryption[$encryption[0]] = 1 Then
		$tempfile = sen($tempfile, $pass[$encryption[0]])
		$tempfile = BinaryToString($tempfile)
	EndIf
	$initnum = StringLen($tempfile) / 2048
	$initnum = $initnum + 1
	If Not IsInt($initnum) Then
		$initnum = Int($initnum) + 1
	EndIf
	MsgBox(0,"initnum",$initnum)
;~ 	ReDim $file[$initnum]
	$file[0][0] = $file[0][0] + 1
	MsgBox(0,"initnum",$initnum)
	_StringChop($tempfile, 2048, $file)
;~ 	_ArrayDisplay($file)
	MsgBox(0, "", $file[$file[0][0]][0])
;~ 	MsgBox(0, "", _StringToHex($file[0]))
;~ 	MsgBox(0, "", StringLen(Binary($file[0])))
;~ 	MsgBox(0, "", Binary(256))
;~ 	exit
EndFunc   ;==>loadfile