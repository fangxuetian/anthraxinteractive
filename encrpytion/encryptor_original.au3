#include <guiconstants.au3>
#include "em.au3"
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