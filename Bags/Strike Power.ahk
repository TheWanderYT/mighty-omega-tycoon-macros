InputBox, Slot, At what slot your combat?
f1::
	Toggle := !Toggle
	Send, %Slot%
	Send, LShift
	while (Toggle = 1) 
	{	
		CoordMode, Pixel, Screen
		PixelSearch, Px, Py, 449, 232, 451, 234, 0x444444, 40, Fast
		if (ErrorLevel = 1) {
			Send, {w down}{s down}{w up}{s up}
			Send, {w down}{s down}
			Running := true
			while (Running = true) {
				Sleep, 1
				CoordMode, Pixel, Screen
				PixelSearch, Px, Py, 314, 232, 316, 234, 0x444444, 40, Fast
				if (ErrorLevel = 0) {
					Send, {w up}{s up}
					Running := false
					break
				}
			}
		}
		Loop, 4
		{
			CoordMode, Pixel, Screen
			PixelSearch, Px, Py, 111, 232, 113, 234, 0x444444, 40, Fast
			if (ErrorLevel = 0) {
				Heal := true
				while (Heal = true) {
					Sleep, 1
					CoordMode, Pixel, Screen
					PixelSearch, Px, Py, 314, 232, 316, 234, 0x444444, 40, Fast
					if (ErrorLevel = 1) {
						Heal := false
						break
					}
				}
			}
			Heal := false
			Click
		}
		CoordMode, Pixel, Screen
		PixelSearch, Px, Py, 111, 232, 113, 234, 0x444444, 40, Fast
		if (ErrorLevel = 0) {
			Heal := true
			while (Heal = true) {
				Sleep, 1
				CoordMode, Pixel, Screen
				PixelSearch, Px, Py, 314, 232, 316, 234, 0x444444, 40, Fast
				if (ErrorLevel = 1) {
					Heal := false
					break
				}
			}
		}
		Heal := false
		Click, Right
	}
	
f2::
{
	ExitApp
}