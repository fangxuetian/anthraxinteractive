$TempOriginalFileBeingDebuggedFileName = "ASock"
$TempOriginalFileBeingDebuggedFileFolder = "C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server"
$TempOriginalFileBeingDebuggedFilePath = "C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3"
AutoIt_Debugger_LoadFile("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock")
AutoIt_Debugger_DebugFile(@ScriptFullPath)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 1, False, @error, @extended)
Global Const $FD_READ = 1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 1, False, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_READ", $FD_READ, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 2, False, @error, @extended)
Global Const $FD_WRITE = 2
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 2, False, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_WRITE", $FD_WRITE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 3, False, @error, @extended)
Global Const $FD_OOB = 4
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 3, False, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_OOB", $FD_OOB, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 4, False, @error, @extended)
Global Const $FD_ACCEPT = 8
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 4, False, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_ACCEPT", $FD_ACCEPT, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 5, False, @error, @extended)
Global Const $FD_CONNECT = 16
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 5, False, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_CONNECT", $FD_CONNECT, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 6, False, @error, @extended)
Global Const $FD_CLOSE = 32
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 6, False, @error, @extended)
AutoIt_Debugger_SendVariable("$FD_CLOSE", $FD_CLOSE, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 7, False, @error, @extended)
Local $hWs2_32 = -1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 7, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 9, False, @error, @extended)
Func _ASocket($iAddressFamily = 2, $iType = 1, $iProtocol = 6)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 9, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iAddressFamily", $iAddressFamily, @error, @extended)
AutoIt_Debugger_SendVariable("$iType", $iType, @error, @extended)
AutoIt_Debugger_SendVariable("$iProtocol", $iProtocol, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 10, False, @error, @extended)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 10, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 11, False, @error, @extended)
	Local $hSocket = DllCall($hWs2_32, "uint", "socket", "int", $iAddressFamily, "int", $iType, "int", $iProtocol)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 11, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$iAddressFamily", $iAddressFamily, @error, @extended)
AutoIt_Debugger_SendVariable("$iType", $iType, @error, @extended)
AutoIt_Debugger_SendVariable("$iProtocol", $iProtocol, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 12, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 12, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 13, False, @error, @extended)
		SetError(1, @error)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 13, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 14, False, @error, @extended)
		Return -1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 14, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 15, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 15, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 16, False, @error, @extended)
	If $hSocket[ 0 ] = -1 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 16, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 17, False, @error, @extended)
		SetError(2, _WSAGetLastError())
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 17, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 18, False, @error, @extended)
		Return -1
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 18, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 19, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 19, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 20, False, @error, @extended)
	Return $hSocket[ 0 ]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 20, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 21, False, @error, @extended)
EndFunc   ;==>_ASocket
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 21, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 23, False, @error, @extended)
Func _ASockShutdown($hSocket)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 23, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 24, False, @error, @extended)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 24, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 25, False, @error, @extended)
	Local $iRet = DllCall($hWs2_32, "int", "shutdown", "uint", $hSocket, "int", 2)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 25, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 26, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 26, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 27, False, @error, @extended)
		SetError(1, @error)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 27, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 28, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 28, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 29, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 29, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 30, False, @error, @extended)
	If $iRet[ 0 ] <> 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 30, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 31, False, @error, @extended)
		SetError(2, _WSAGetLastError())
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 31, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 32, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 32, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 33, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 33, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 34, False, @error, @extended)
	Return True
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 34, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 35, False, @error, @extended)
EndFunc   ;==>_ASockShutdown
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 35, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 37, False, @error, @extended)
Func _ASockClose($hSocket)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 37, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 38, False, @error, @extended)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 38, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 39, False, @error, @extended)
	Local $iRet = DllCall($hWs2_32, "int", "closesocket", "uint", $hSocket)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 39, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 40, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 40, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 41, False, @error, @extended)
		SetError(1, @error)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 41, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 42, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 42, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 43, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 43, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 44, False, @error, @extended)
	If $iRet[ 0 ] <> 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 44, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 45, False, @error, @extended)
		SetError(2, _WSAGetLastError())
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 45, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 46, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 46, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 47, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 47, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 48, False, @error, @extended)
	Return True
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 48, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 49, False, @error, @extended)
EndFunc   ;==>_ASockClose
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 49, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 51, False, @error, @extended)
Func _ASockSelect($hSocket, $hWnd, $uiMsg, $iEvent)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 51, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$hWnd", $hWnd, @error, @extended)
AutoIt_Debugger_SendVariable("$uiMsg", $uiMsg, @error, @extended)
AutoIt_Debugger_SendVariable("$iEvent", $iEvent, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 52, False, @error, @extended)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 52, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 53, False, @error, @extended)
 	Local $iRet = DllCall( 			$hWs2_32, 			"int", "WSAAsyncSelect", 			"uint", $hSocket, 			"hwnd", $hWnd, 			"uint", $uiMsg, 			"int", $iEvent 			)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 60, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$hWnd", $hWnd, @error, @extended)
AutoIt_Debugger_SendVariable("$uiMsg", $uiMsg, @error, @extended)
AutoIt_Debugger_SendVariable("$iEvent", $iEvent, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 61, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 61, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 62, False, @error, @extended)
		SetError(1, @error)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 62, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 63, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 63, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 64, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 64, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 65, False, @error, @extended)
	If $iRet[ 0 ] <> 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 65, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 66, False, @error, @extended)
		SetError(2, _WSAGetLastError())
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 66, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 67, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 67, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 68, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 68, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 69, False, @error, @extended)
	Return True
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 69, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 70, False, @error, @extended)
EndFunc   ;==>_ASockSelect
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 70, False, @error, @extended)

; Note: you can see that $iMaxPending is set to 5 by default.
; IT DOES NOT MEAN THAT DEFAULT = 5 PENDING CONNECTIONS
; 5 == SOMAXCONN, so don't worry be happy
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 75, False, @error, @extended)
Func _ASockListen($hSocket, $sIP, $uiPort, $iMaxPending = 5); 5 == SOMAXCONN => No need to change it.
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 75, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$sIP", $sIP, @error, @extended)
AutoIt_Debugger_SendVariable("$uiPort", $uiPort, @error, @extended)
AutoIt_Debugger_SendVariable("$iMaxPending", $iMaxPending, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 76, False, @error, @extended)
	Local $iRet
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 76, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 77, False, @error, @extended)
	Local $stAddress
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 77, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 79, False, @error, @extended)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 79, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 81, False, @error, @extended)
	$stAddress = __SockAddr($sIP, $uiPort)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 81, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_SendVariable("$sIP", $sIP, @error, @extended)
AutoIt_Debugger_SendVariable("$uiPort", $uiPort, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 82, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 82, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 83, False, @error, @extended)
		SetError(@error, @extended)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 83, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 84, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 84, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 85, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 85, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 87, False, @error, @extended)
	$iRet = DllCall($hWs2_32, "int", "bind", "uint", $hSocket, "ptr", DllStructGetPtr($stAddress), "int", DllStructGetSize($stAddress))
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 87, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 88, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 88, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 89, False, @error, @extended)
		SetError(3, @error)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 89, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 90, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 90, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 91, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 91, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 92, False, @error, @extended)
	If $iRet[ 0 ] <> 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 92, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 93, False, @error, @extended)
		$stAddress = 0; Deallocate
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 93, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 94, False, @error, @extended)
		SetError(4, _WSAGetLastError())
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 94, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 95, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 95, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 96, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 96, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 98, False, @error, @extended)
	$iRet = DllCall($hWs2_32, "int", "listen", "uint", $hSocket, "int", $iMaxPending)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 98, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$iMaxPending", $iMaxPending, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 99, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 99, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 100, False, @error, @extended)
		SetError(5, @error)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 100, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 101, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 101, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 102, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 102, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 103, False, @error, @extended)
	If $iRet[ 0 ] <> 0 Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 103, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 104, False, @error, @extended)
		$stAddress = 0; Deallocate
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 104, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 105, False, @error, @extended)
		SetError(6, _WSAGetLastError())
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 105, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 106, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 106, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 107, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 107, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 109, False, @error, @extended)
	Return True
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 109, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 110, False, @error, @extended)
EndFunc   ;==>_ASockListen
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 110, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 112, False, @error, @extended)
Func _ASockConnect($hSocket, $sIP, $uiPort)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 112, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$sIP", $sIP, @error, @extended)
AutoIt_Debugger_SendVariable("$uiPort", $uiPort, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 113, False, @error, @extended)
	Local $iRet
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 113, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 114, False, @error, @extended)
	Local $stAddress
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 114, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 116, False, @error, @extended)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 116, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 118, False, @error, @extended)
	$stAddress = __SockAddr($sIP, $uiPort)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 118, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_SendVariable("$sIP", $sIP, @error, @extended)
AutoIt_Debugger_SendVariable("$uiPort", $uiPort, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 119, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 119, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 120, False, @error, @extended)
		SetError(@error, @extended)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 120, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 121, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 121, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 122, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 122, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 124, False, @error, @extended)
	$iRet = DllCall($hWs2_32, "int", "connect", "uint", $hSocket, "ptr", DllStructGetPtr($stAddress), "int", DllStructGetSize($stAddress))
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 124, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hSocket", $hSocket, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 125, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 125, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 126, False, @error, @extended)
		SetError(3, @error)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 126, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 127, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 127, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 128, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 128, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 130, False, @error, @extended)
	$iRet = _WSAGetLastError()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 130, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 131, False, @error, @extended)
	If $iRet = 10035 Then; WSAEWOULDBLOCK
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 131, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 132, False, @error, @extended)
		Return True; Asynchronous connect attempt has been started.
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 132, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 133, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 133, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 134, False, @error, @extended)
	SetExtended(1); Connected immediately
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 134, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 135, False, @error, @extended)
	Return True
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 135, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 136, False, @error, @extended)
EndFunc   ;==>_ASockConnect
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 136, False, @error, @extended)

; A wrapper function to ease all the pain in creating and filling the sockaddr struct
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 139, False, @error, @extended)
Func __SockAddr($sIP, $iPort, $iAddressFamily = 2)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 139, False, @error, @extended)
AutoIt_Debugger_SendVariable("$sIP", $sIP, @error, @extended)
AutoIt_Debugger_SendVariable("$iPort", $iPort, @error, @extended)
AutoIt_Debugger_SendVariable("$iAddressFamily", $iAddressFamily, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 140, False, @error, @extended)
	Local $iRet
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 140, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 141, False, @error, @extended)
	Local $stAddress
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 141, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 143, False, @error, @extended)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 143, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 145, False, @error, @extended)
	$stAddress = DllStructCreate("short; ushort; uint; char[8]")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 145, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 146, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 146, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 147, False, @error, @extended)
		SetError(1, @error)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 147, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 148, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 148, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 149, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 149, False, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 151, False, @error, @extended)
	DllStructSetData($stAddress, 1, $iAddressFamily)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 151, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_SendVariable("$iAddressFamily", $iAddressFamily, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 152, False, @error, @extended)
	$iRet = DllCall($hWs2_32, "ushort", "htons", "ushort", $iPort)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 152, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$iPort", $iPort, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 153, False, @error, @extended)
	DllStructSetData($stAddress, 2, $iRet[ 0 ])
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 153, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 154, False, @error, @extended)
	$iRet = DllCall($hWs2_32, "uint", "inet_addr", "str", $sIP)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 154, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$sIP", $sIP, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 155, False, @error, @extended)
	If $iRet[ 0 ] = 0xffffffff Then; INADDR_NONE
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 155, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 156, False, @error, @extended)
		$stAddress = 0; Deallocate
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 156, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 157, False, @error, @extended)
		SetError(2, _WSAGetLastError())
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 157, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 158, False, @error, @extended)
		Return False
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 158, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 159, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 159, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 160, False, @error, @extended)
	DllStructSetData($stAddress, 3, $iRet[ 0 ])
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 160, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
	
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 162, False, @error, @extended)
	Return $stAddress
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 162, False, @error, @extended)
AutoIt_Debugger_SendVariable("$stAddress", $stAddress, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 163, False, @error, @extended)
EndFunc   ;==>__SockAddr
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 163, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 165, False, @error, @extended)
Func _WSAGetLastError()
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 165, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 166, False, @error, @extended)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 166, False, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 167, False, @error, @extended)
	Local $iRet = DllCall($hWs2_32, "int", "WSAGetLastError")
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 167, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_SendVariable("$hWs2_32", $hWs2_32, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 168, False, @error, @extended)
	If @error Then
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 168, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 169, False, @error, @extended)
		ConsoleWrite("+> _WSAGetLastError(): WSAGetLastError() failed. Script line number: " & @ScriptLineNumber & @CRLF)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 169, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 170, False, @error, @extended)
		SetExtended(1)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 170, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 171, False, @error, @extended)
		Return 0
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 171, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 172, False, @error, @extended)
	EndIf
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 172, False, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 173, False, @error, @extended)
	Return $iRet[ 0 ]
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 173, False, @error, @extended)
AutoIt_Debugger_SendVariable("$iRet", $iRet, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 174, False, @error, @extended)
EndFunc   ;==>_WSAGetLastError
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 174, False, @error, @extended)


; Got these here:
; http://www.autoitscript.com/forum/index.php?showtopic=5620&hl=MAKELONG
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 179, False, @error, @extended)
Func _MakeLong($LoWord, $HiWord)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 179, False, @error, @extended)
AutoIt_Debugger_SendVariable("$LoWord", $LoWord, @error, @extended)
AutoIt_Debugger_SendVariable("$HiWord", $HiWord, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 180, False, @error, @extended)
	Return BitOR($HiWord * 0x10000, BitAND($LoWord, 0xFFFF)); Thanks Larry
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 180, False, @error, @extended)
AutoIt_Debugger_SendVariable("$HiWord", $HiWord, @error, @extended)
AutoIt_Debugger_SendVariable("$LoWord", $LoWord, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 181, False, @error, @extended)
EndFunc   ;==>_MakeLong
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 181, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 183, False, @error, @extended)
Func _HiWord($Long)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 183, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Long", $Long, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 184, False, @error, @extended)
	Return BitShift($Long, 16); Thanks Valik
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 184, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Long", $Long, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 185, False, @error, @extended)
EndFunc   ;==>_HiWord
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 185, False, @error, @extended)

AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 187, False, @error, @extended)
Func _LoWord($Long)
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 187, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Long", $Long, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 188, False, @error, @extended)
	Return BitAND($Long, 0xFFFF); Thanks Valik
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 188, False, @error, @extended)
AutoIt_Debugger_SendVariable("$Long", $Long, @error, @extended)
AutoIt_Debugger_NextLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 189, False, @error, @extended)
EndFunc   ;==>_LoWord
AutoIt_Debugger_FinishedLine("C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Chat\Server\ASock.au3", "ASock", 189, False, @error, @extended)



