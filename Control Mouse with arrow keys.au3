#RequireAdmin
#Include <Misc.au3>

MsgBox(64,"Keys","Control mouse movements with your arrow keys." & @CRLF & "Left Click = Right CTRL" & @CRLF & "Right Click = Right Shift" & @CRLF & @CRLF & "Press Alt to see this message again." & @CRLF & "Exit = Esc")

While 1
If _IsPressed("12") Then
	MsgBox(64,"Keys","Control mouse movements with your arrow keys." & @CRLF & "Left Click = Right CTRL" & @CRLF & "Right Click = Right Shift" & @CRLF & @CRLF & "Press Alt to see this message again." & @CRLF & "Exit = Esc")
ElseIf _IsPressed("1B") Then
	MsgBox(64,"","Bye")
	Exit
EndIf
$oPos = MouseGetPos()
	If _IsPressed("26") Then
		MouseMove($oPos[0], $oPos[1] - 4, 1)
	EndIf
	If _IsPressed("28") Then
		MouseMove($oPos[0], $oPos[1] + 4, 1)
	EndIf
	If _IsPressed("25") Then
		MouseMove($oPos[0] - 4, $oPos[1], 1)
	EndIf
	If _IsPressed("27") Then
		MouseMove($oPos[0] + 4, $oPos[1], 1)
	EndIf
	If _IsPressed("25") and _IsPressed("26") Then ; left & top
		MouseMove($oPos[0] - 8, $oPos[1] - 8, 1)
	EndIf
	If _IsPressed("25") and _IsPressed("28") Then ; left & bottom
		MouseMove($oPos[0] - 8, $oPos[1] + 8, 1)
	EndIf
	If _IsPressed("27") and _IsPressed("26") Then ; right & top
		MouseMove($oPos[0] + 8, $oPos[1] - 8, 1)
	EndIf
	If _IsPressed("27") and _IsPressed("28") Then ; right & bottom
		MouseMove($oPos[0] + 8, $oPos[1] + 8, 1)
	EndIf
	If _IsPressed("A3") Then ; click
		MouseClick("primary")
		Do
			$LCState = _IsPressed("A3")
		Until $LCState = 0
	EndIf
	If _IsPressed("A1") Then ; click
		MouseClick("secondary")
		Do
			$RCState = _IsPressed("A1")
		Until $RCState = 0
	EndIf
WEnd