#include "D:\Documents and Settings\Maverick\My Documents\AutoEditorDebugger10B\NomadMemory.au3"
;------------[ Debug code created by mgDebugIt001.au3 V2.23 ]--------------;
Global $DB_AllFuncs = ""
Global $Fnlist = stringsplit($DB_AllFuncs,"|")
 if @error then $Fnlist[0] = 0
Global $Fnlines = stringsplit("","#");start|end of all Funcs
 if @error then $Fnlines[0] = 0
Global $DB_AdlibFn = "none"

#region - the names of the parameters used by functions
#Endregion - the names of the parameters used by functions


;------------ Debug script from D:\Documents and Settings\Maverick\Desktop\thumb\PixelSoftsvn\wrapper\enc.au3 ------------
Bug_Bare_Func(-1, @Error, @Extended,0,0,0,0,0,0)
#Region
Bug_Bare_Func(-2, @Error, @Extended,0,0,0,0,0,0)
#AutoIt3Wrapper_outfile_type=a3x
Bug_Bare_Func(-3, @Error, @Extended,0,0,0,0,0,0)
#AutoIt3Wrapper_Compression=4
Bug_Bare_Func(-4, @Error, @Extended,0,0,0,0,0,0)
#EndRegion
Bug_Bare_Func(-5, @Error, @Extended,0,0,0,0,0,0)
#include <guiconstants.au3>
Bug_Bare_Func(-6, @Error, @Extended,0,0,0,0,0,0)
#include "em.au3"
Bug_Bare_Func(-8, @Error, @Extended,0,0,0,0,0,0)
$WinMain = GUICreate('Encryption tool', 400, 400)
Bug_Bare_Func(-10, @Error, @Extended,0,0,0,0,0,0)
$EditText = GUICtrlCreateEdit('', 5, 5, 380, 350)
Bug_Bare_Func(-11, @Error, @Extended,0,0,0,0,0,0)
$InputPass = GUICtrlCreateInput('', 5, 360, 100, 20, 0x21)
Bug_Bare_Func(-15, @Error, @Extended,0,0,0,0,0,0)
$EncryptButton = GUICtrlCreateButton('Encrypt', 170, 360, 105, 35)
Bug_Bare_Func(-17, @Error, @Extended,0,0,0,0,0,0)
$DecryptButton = GUICtrlCreateButton('Decrypt', 285, 360, 105, 35)
Bug_Bare_Func(-20, @Error, @Extended,0,0,0,0,0,0)
GUISetState()
Bug_Bare_Func(-23, @Error, @Extended,0,0,0,0,0,0)
Do
  Bug_Bare_Func(-24, @Error, @Extended,0,0,0,0,0,0)
  $Msg = GUIGetMsg()
  Bug_Bare_Func(-25, @Error, @Extended,0,0,0,0,0,0)
  If $Msg = $EncryptButton Then
    Bug_Bare_Func(-26, @Error, @Extended,0,0,0,0,0,0)
    GUISetState(@SW_DISABLE, $WinMain)
    Bug_Bare_Func(-27, @Error, @Extended,0,0,0,0,0,0)
    $string = GUICtrlRead($EditText)
    Bug_Bare_Func(-28, @Error, @Extended,0,0,0,0,0,0)
    GUICtrlSetData($EditText, 'Please wait while the text is Encrypted/Decrypted.')
    Bug_Bare_Func(-29, @Error, @Extended,0,0,0,0,0,0)
    $sen = sen($string, GUICtrlRead($InputPass))
    Bug_Bare_Func(-30, @Error, @Extended,0,0,0,0,0,0)
    GUICtrlSetData($EditText, BinaryToString($sen))
    Bug_Bare_Func(-35, @Error, @Extended,0,0,0,0,0,0)
    GUISetState(@SW_ENABLE, $WinMain)
  Bug_Bare_Func(-36, @Error, @Extended,0,0,0,0,0,0)
  EndIf
  Bug_Bare_Func(-37, @Error, @Extended,0,0,0,0,0,0)
  If $Msg = $DecryptButton Then
    Bug_Bare_Func(-38, @Error, @Extended,0,0,0,0,0,0)
    GUISetState(@SW_DISABLE, $WinMain)
    Bug_Bare_Func(-39, @Error, @Extended,0,0,0,0,0,0)
    $string = GUICtrlRead($EditText)
    Bug_Bare_Func(-40, @Error, @Extended,0,0,0,0,0,0)
    GUICtrlSetData($EditText, 'Please wait while the text is Encrypted/Decrypted.')
    Bug_Bare_Func(-41, @Error, @Extended,0,0,0,0,0,0)
    GUICtrlSetData($EditText, BinaryToString(sde($string, GUICtrlRead($InputPass))))
    Bug_Bare_Func(-46, @Error, @Extended,0,0,0,0,0,0)
    GUISetState(@SW_ENABLE, $WinMain)
  Bug_Bare_Func(-47, @Error, @Extended,0,0,0,0,0,0)
  EndIf
Bug_Bare_Func(-48, @Error, @Extended,0,0,0,0,0,0)
Until $Msg = $GUI_EVENT_CLOSE
