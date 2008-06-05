#include <IE.au3>
#include <INet.au3>
HotKeySet("{F10}","hideshow")

$oIE=_IECreateEmbedded()
$Form1 = GUICreate("Form1", 749, 641, 193, 125)
$activex = GUICtrlCreateObj($oIE,0,0,749,641)
GUISetState(@SW_SHOW)
_IENavigate($oIE,"http://freerice.com")
While 1
    $html=_IEBodyReadHTML($oIE)
    $Word=StringRegExp($html,"(?i)<li><strong>(.*?)</strong>",1)
    $LearnWord=StringRegExp($html,'(?i)incorrect>(.*?)</div>',1)
    If IsArray($LearnWord) Then
        $splitted=StringSplit($LearnWord[0],"=")
        $learn=StringStripWS($splitted[1],2)
        $means=StringStripWS($splitted[2],1)
        ConsoleWrite(">Learned a new word!: " & $LearnWord[0] & @CRLF)
        IniWrite("learning.ini","Learned words",$learn,$means)
    EndIf   
    $isLearned=IniRead("learning.ini","Learned words",StringStripWS($Word[0],8),"")
	sleep(750)
    If $isLearned <> "" Then
        ConsoleWrite("+>Found synonym. Clicking by text(learned word): " & $isLearned & @CRLF)
        _IELinkClickByText($oIE,$isLearned)
		sleep(750)
    Else
        $SynonymsG = _GetSyn(StringStripWS($Word[0],8))
        If IsArray($SynonymsG) Then
            $oLinks=_IELinkGetCollection($oIE)
            $Found=False
            For $oLink In $oLinks
                For $a=1 To $SynonymsG[0]
                    If StringInStr($oLink.href,"Javascript") Then
                        $test=_IEPropertyGet($oLink,"innertext")
                        If StringInStr($SynonymsG[$a],$test) Then
                            $WordToClick = $test
                            $Found=True
                            ExitLoop(2)
                        EndIf
                    EndIf
                Next
            Next
        Else
            $Found=False
        EndIf

        If $Found Then
            ConsoleWrite("+>Found synonym. Clicking by text: " & $WordToClick & @CRLF)
            _IELinkClickByText($oIE,$WordToClick)  
			sleep(750)
        Else
            ConsoleWrite("-> Could not find synonym. Clicking random word." & @CRLF)
            _IENavigate($oIE,"javascript: submitForm('" & Random(1,4,1) & "')")	
			sleep(750)
        EndIf
    EndIf
WEnd

Func hideshow()
    If _IEPropertyGet($oIE,"visible") Then
        _IEAction($oIE,"invisible")
    Else
        _IEAction($oIE,"visible")
    EndIf
EndFunc

Func _GetSyn($sWord)
    $sSource=_INetGetSource("http://www.synonymer.se/en/?query="&$sWord&"&btnS=Find+synonyms")
    $synonyms=StringRegExp($sSource,'(?i)class="synonym">(.*?)</TR>',1)
    If Not IsArray($synonyms) Then Return 0
    $syns=StringSplit($synonyms[0],",")
    Return $syns
EndFunc