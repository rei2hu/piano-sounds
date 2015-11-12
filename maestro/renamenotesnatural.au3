#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Local $notes = StringSplit("c d e f g a", " ")
$notes[0] = "b"
; rename not sharp notes
for $j = 1 to 36 step +1
   $filename = "a" & $j & ".wav"
   ;MsgBox(1, "", $filename)
   ;MsgBox(1, "", FileFindFirstFile("a" + $j + ".wav"))
   ;MsgBox(1, "", FileFindFirstFile($filename))
   ;FileMove(FileFindFirstFile("a" & $j & ".wav"),$notes[Mod($j,7)] & (Int($j/7)+1) & ".wav")
   FileMove($filename,$notes[Mod($j,7)] & (Int($j/7)+1) & ".wav")
   ;MsgBox(0,"", $filename & " renamed to " & $notes[Mod($j,7)] & (Int($j/7)+1) & ".wav")
Next

for $j = 2 to 7 step +1
   FileMove("b" & $j & ".wav", "b" & $j-1 & ".wav")
Next

#cs
; rename sharp notes
Local $notesFlat = StringSplit("cs ds fs gs", " ")
$notesFlat[0] = "a"

for $k = 1 to 26 Step +1
   $filename = "b" & $k & ".wav"
   if(Mod($j,5) == 0 Then
   	  FileMove($filename,$notes[Mod($j,5)] & (Int($j/5)) & ".wav")
   Else
	  FileMove($filename,$notes[Mod($j,5)] & (Int($j/5)) & ".wav")
   EndIf
   #ce