#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Local $notes = StringSplit("c d e f g a", " ")
$notes[0] = "b"
for $j = 1 to 36 step +1
   $filename = "a" & $j & ".wav"
   ;MsgBox(1, "", $filename)
   ;MsgBox(1, "", FileFindFirstFile("a" + $j + ".wav"))
   ;MsgBox(1, "", FileFindFirstFile($filename))
   ;FileMove(FileFindFirstFile("a" & $j & ".wav"),$notes[Mod($j,7)] & (Int($j/7)+1) & ".wav")
   FileMove($filename,$notes[Mod($j,7)] & (Int($j/7)+1) & ".wav")
   ;MsgBox(0,"", $filename & " renamed to " & $notes[Mod($j,7)] & (Int($j/7)+1) & ".wav")
Next