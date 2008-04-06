#include <guiconstants.au3>
local $rt
local $rt1
local $an = "abcdefghijklmnopqrstuvxwxyz .=-\)(*&^%$#@!~/+,'"":;><?[]{}" & @CR & @lf & "	ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
local $ct
func sen($pt)
	$rt = ""
	$rt1 = ""
	for $i = 1 to stringlen($pt)
		$cl = stringmid($pt,$i,1)
		$cp = StringInStr($an,$cl,1)
		consolewrite($cl & @lf & $cp & @lf)
		if $cp = stringlen($an) Then
			$rt = $rt & "a"
			consolewrite("$rt " & $rt & @lf)
		Else
			$idk = $cp + 1
			consolewrite("$idk " & $idk & @lf)
			$le = stringmid($an,$idk,1)
			consolewrite("$le " & $le & @lf)
			$rt = $rt & $le
			consolewrite("$rtlol " & $rt & @lf)
		EndIf
	Next
	for $i = 1 to stringlen($rt)
		$ctl = stringmid($rt,$i,1)
		consolewrite("$ctl " & $ctl & @lf)
		if $rt1 = "" Then
			$rt1 = $rt1 & stringinstr($an,$ctl,1)
		Else
			$rt1 = $rt1 &  " " & stringinstr($an,$ctl,1)
		EndIf
		consolewrite("$rt1 " & $rt1 & @lf)
	Next
	consolewrite("$rt " & $rt & @lf)
	consolewrite("$rt1 " & $rt1 & @lf)
	$rt = $rt1
	return $rt
EndFunc
func sde($et)
	$rt = ""
	$rt1 = ""
	$pt = ""
	$et = stringreplace($et,@cr," ")
	$et = stringreplace($et,@lf," ")
	$et = stringreplace($et,@crlf," ")
	$ets = stringsplit($et," ")
	for $i = 1 to $ets[0]
		if $ets[$i] = 1 Then
			$rt = $rt & "9"
		Else
			$rt = $rt & stringmid($an,$ets[$i] - 1,1)
		EndIf
	Next
	return $rt
EndFunc
; GUI and String stuff
$WinMain = GuiCreate('Encryption tool', 400, 400)
; Creates window
$EditText = GuiCtrlCreateEdit('',5,5,380,350)
; Creates main edit
; Creates the password box with blured/centered input
; These two make the level input with the Up|Down ability
$EncryptButton = GuiCtrlCreateButton('Encrypt', 170, 360, 105, 35)
; Encryption button
$DecryptButton = GuiCtrlCreateButton('Decrypt', 285, 360, 105, 35)
; Decryption button
; Simple text labels so you know what is what
GuiSetState()
; Shows window

Do
   $Msg = GuiGetMsg()
   If $msg = $EncryptButton Then
      GuiSetState(@SW_DISABLE,$WinMain) ; Stops you from changing anything
      $string = GuiCtrlRead($EditText) ; Saves the editbox for later
      GUICtrlSetData($EditText,'Please wait while the text is Encrypted/Decrypted.') ; Friendly message
      GuiCtrlSetData($EditText,sen($string))
      ; Calls the encryption. Sets the data of editbox with the encrypted string
      ; The encryption starts with 1/0 to tell it to encrypt/decrypt
      ; The encryption then has the string that we saved for later from edit box
      ; It then reads the password box & Reads the level box
      GuiSetState(@SW_ENABLE,$WinMain) ; This turns the window back on
   EndIf
   If $msg = $DecryptButton Then
      GuiSetState(@SW_DISABLE,$WinMain) ; Stops you from changing anything
      $string = GuiCtrlRead($EditText) ; Saves the editbox for later
      GUICtrlSetData($EditText,'Please wait while the text is Encrypted/Decrypted.') ; Friendly message
      GuiCtrlSetData($EditText,sde($string))
      ; Calls the encryption. Sets the data of editbox with the encrypted string
      ; The encryption starts with 1/0 to tell it to encrypt/decrypt
      ; The encryption then has the string that we saved for later from edit box
      ; It then reads the password box & Reads the level box
      GuiSetState(@SW_ENABLE,$WinMain) ; This turns the window back on
   EndIf
Until $msg = $GUI_EVENT_CLOSE ; Continue loop untill window is closed