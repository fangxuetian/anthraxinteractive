; Initialize error handler
;~ $oMyError = ObjEvent("AutoIt.Error","MyErrFunc")

$Script = "C:\Users\maverick\Desktop\thumb\PixelSoft\PixelSoft EOSe\start.vbs"

; --------------------------------- Sign it ----------------------------------
$oSigner = ObjCreate("Scripting.Signer")
$oSigner.SignFile ($Script, "Athcert")

$oSigner = ""
; Use a valid certificat
; you can do this by going to a server that has a certificate service running.
; And than export a certificate that is OK for Signing Code.
; Then import this on the client.
;This is custom error handler

;~ Func MyErrFunc()
;~ 	$HexNumber=hex($oMyError.number,8)
;~ 	Msgbox(0,"AutoItCOM Test","We intercepted a COM Error !"       & @CRLF  & @CRLF & _
;~              "err.description is: "    & @TAB & $oMyError.description    & @CRLF & _
;~              "err.windescription:"     & @TAB & $oMyError.windescription & @CRLF & _
;~              "err.number is: "         & @TAB & $HexNumber              & @CRLF & _
;~              "err.lastdllerror is: "   & @TAB & $oMyError.lastdllerror   & @CRLF & _
;~              "err.scriptline is: "     & @TAB & $oMyError.scriptline     & @CRLF & _
;~              "err.source is: "         & @TAB & $oMyError.source         & @CRLF & _
;~              "err.helpfile is: "       & @TAB & $oMyError.helpfile       & @CRLF & _
;~              "err.helpcontext is: "    & @TAB & $oMyError.helpcontext _
;~             )
;~ 	SetError(1)  ; to check for after this function returns
;~ EndFunc