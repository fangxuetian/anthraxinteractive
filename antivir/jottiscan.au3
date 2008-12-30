#include <IE.au3>
#include <GUIConstants.au3>
#include <StaticConstants.au3>

#Region JottiScan()
; ===================================================================
; JottiScan($sFile)
;
; Scan the specified file with Jotti's malware scanner.
; Parameters:
;    $sFile - IN - The full path to the file to scan.
; Returns:
;    None.
; ===================================================================
Func JottiScan($sFile)
    ; Ensure we are in message mode.
     Local Const $nOldOpt = Opt("GUIOnEventMode", 0)

    ; Create the embedded IE object.
     Local $oIE = _IECreateEmbedded()

    ; Create the GUI.
     Local Const $w = 800, $h = 600
     Local $hWnd = GUICreate("Test", $w, $h)
     Local $idLabel = GUICtrlCreateLabel("Please wait, loading...", 0, 0, $w, $h, BitOR($SS_CENTER, $SS_CENTERIMAGE))
     Local $idObject = GUICtrlCreateObj($oIE, 0, 0, $w, $h)

    ; Increase the font size a bit.
     GUICtrlSetFont($idLabel, 12)

    ; Hide the ActiveX object for now.
     GUICtrlSetState($idObject, $GUI_HIDE)

    ; Show the GUI.
     GUISetState(@SW_SHOW)

    ; Start of pseudo-loop.
     Do
        ; Ensure the path is not a directory.
         If StringInStr(FileGetAttrib($sFile), "D") Then
             GUICtrlSetData($idLabel, "Directory specified instead of file.")
             ExitLoop
         EndIf

        ; Ensure the file exists.
         If Not FileExists($sFile) Then
             GUICtrlSetData($idLabel, "File does not exist.")
             ExitLoop
         EndIf

        ; Ensure Internet Explorer was initialized.
         If Not IsObj($oIE) Then
             GUICtrlSetData($idLabel, "Unable to initialize Internet Explorer.")
             ExitLoop
         EndIf

        ; Load up the virus scan page.
         _IENavigate($oIE, "http://virusscan.jotti.org/")

        ; Get the input object.
          Local $oInput = _IEGetObjByName($oIE, "scanfile")
         If Not IsObj($oInput) Then
             GUICtrlSetData($idLabel, "Unable to locate file input.")
             ExitLoop
         EndIf

        ; Ensure the input has focus.
         $oInput.focus()

        ; Send the file path to the input.
         ControlSend($hWnd, "", "", $sFile, 1)

        ; Get the form submit button.
         Local $oSubmit = _IEGetObjById($oIE, "submitbutton")
         If Not IsObj($oSubmit) Then
             GUICtrlSetData($idLabel, "Unable to locate submit button.")
             ExitLoop
         EndIf

        ; Submit the form.
         _IEAction($oSubmit, "click")

        ; Hide the label.
         GUICtrlSetState($idLabel, $GUI_HIDE)

        ; Ensure the ActiveX Object is visible.
         GUICtrlSetState($idObject, $GUI_SHOW)
     Until True

    ; Wait around for the user to close.
     While GUIGetMsg() <> $GUI_EVENT_CLOSE
     WEnd

    ; Restore the message mode.
     Opt("GUIOnEventMode", $nOldOpt)
EndFunc   ; JottiScan()
#EndRegion JottiScan()