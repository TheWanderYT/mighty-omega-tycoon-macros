InputBox, Slot, At what slot your ss will be?
InputBox, SSLimit, How many ss you want to do?

f1::
	Toggle := !Toggle
	MouseGetPos, StartX, StartY
	while (Toggle = 1) 
	{	
		MouseMove, StartX, StartY, 5
		Click, 5
		Sleep, 500
		Send, %Slot%
		Sleep, 50
		Click
		Sleep, 50
		Send, 1
		Send, r
		Sleep, 1500
		Loop, 2
		{
			CoordMode, Pixel, Screen
			PixelSearch, Px, Py, 314, 232, 316, 234, 0x444444, 40, Fast
			if (ErrorLevel = 0) {
				Heal := true
				while (Heal = true) {
					Sleep, 1
					CoordMode, Pixel, Screen
					PixelSearch, Px, Py, 517, 232, 519, 234, 0x444444, 40, Fast
					if (ErrorLevel = 1) {
						Heal := false
						break
					}
				}
			}
			Loop, 4
			{
				CoordMode, Pixel, Screen
				PixelSearch, Px, Py, 314, 232, 316, 234, 0x444444, 40, Fast
				if (ErrorLevel = 0) {
					Heal := true
					while (Heal = true) {
						Sleep, 1
						CoordMode, Pixel, Screen
						PixelSearch, Px, Py, 517, 232, 519, 234, 0x444444, 40, Fast
						if (ErrorLevel = 1) {
							Heal := false
							break
						}
					}
				}
				Click
				Sleep, 2500
			}
			Sleep, 100
			Click, Right
			Sleep, 2650
		}
		Click
		Sleep, 2550
		Click
		Sleep, 2550
		Click
		Sleep, 2550
		Send, 1
		if %A_Index% = %SSLimit%
		{
			ExitApp
		}
		
	}

f2::
{
	ExitApp
}
