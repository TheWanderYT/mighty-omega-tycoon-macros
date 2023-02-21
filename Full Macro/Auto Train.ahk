InputBox, Slot, At what slot your Push Up/Squats will be?
InputBox, Delay, What delay between clicks do you want? (MS)

F1::
{
	Toggle := !Toggle
	MouseGetPos, X3, Y3 
	CoordMode, Pixel, Screen
	CoordMode, Mouse, Screen
	Send, %Slot%
	While (Toggle = 1) {
		ImageSearch, X1, Y1, 786, 191, 808, 208, *120 %A_ScriptDir%\bin\Full.png
		if (ErrorLevel = 0)
		{
			Send, %Slot%
			MouseMove, %X3%, %Y3%, 2
			Sleep, 50
			Click
			Sleeping := true
			while (Sleeping = true) {
				MouseMove, 1343, 95, 2
				Click
				Sleep, 50
				CoordMode, Pixel, Screen
				ImageSearch, X1, Y1, 786, 191, 808, 208, *120 %A_ScriptDir%\bin\Zero.png
				if (ErrorLevel = 0) {
					MouseMove, %X3%, %Y3%, 2
					Sleep, 50
					Click
					Sleep, 200
					Send, %Slot%
					Sleeping := false
					break
				}
			}
		} else {
			ImageSearch, X1, Y1, 773, 191, 793, 208, *120 %A_ScriptDir%\bin\Full2.png
			if (ErrorLevel = 0)
			{
				Send, %Slot%
				MouseMove, %X3%, %Y3%, 2
				Sleep, 50
				Click
				Sleeping := true
				while (Sleeping = true) {
					MouseMove, 1343, 95, 2
					Click
					Sleep, 50
					CoordMode, Pixel, Screen
					ImageSearch, X1, Y1, 786, 191, 808, 208, *120 %A_ScriptDir%\bin\Zero.png
					if (ErrorLevel = 0) {
						MouseMove, %X3%, %Y3%, 2
						Sleep, 50
						Click
						Sleep, 200
						Send, %Slot%
						Sleeping := false
						break
					}
				}
			} else {
				MouseMove, 1343, 95, 2
				Click
				Sleep, %Delay%
			}
		}
	}
	return
}

F2::
{
	ExitApp
}