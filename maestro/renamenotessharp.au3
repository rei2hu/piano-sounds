#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Local $notes = StringSplit("cs ds fs gs", " ")
$notes[0] = "as"
; rename not sharp notes
for $j = 1 to 26 step +1
   $filename = "b" & $j & ".wav"
   ;MsgBox(1, "", $filename)
   ;MsgBox(1, "", FileFindFirstFile("a" + $j + ".wav"))
   ;MsgBox(1, "", FileFindFirstFile($filename))
   ;FileMove(FileFindFirstFile("a" & $j & ".wav"),$notes[Mod($j,7)] & (Int($j/7)+1) & ".wav")
   FileMove($filename,$notes[Mod($j,5)] & (Int($j/5)+1) & ".wav")
   ;MsgBox(0,"", $filename & " renamed to " & $notes[Mod($j,7)] & (Int($j/7)+1) & ".wav")
Next

for $j = 2 to 7 step +1
   FileMove("as" & $j & ".wav", "as" & $j-1 & ".wav")
Next