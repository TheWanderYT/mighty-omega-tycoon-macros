F1::
	MouseGetPos, X3, Y3 
	CoordMode, Pixel, Screen
	CoordMode, Mouse, Screen
	Loop
		{
		CoordMode, Pixel, Screen
		CoordMode, Mouse, Screen
		ImageSearch, X1, Y1, 13, 713, 121, 735, *90 %A_ScriptDir%\bin\Photo2.png
		if (ErrorLevel = 0)
		{
			Reload
		}
		else
		{
			CoordMode, Pixel, Screen
			CoordMode, Mouse, Screen
			ImageSearch, X, Y, 204, 719, 220, 735, *90 %A_ScriptDir%\bin\Photo.png
			if (ErrorLevel = 0)
			{
				MouseMove, 212, 727, 2
				Click, 212 727
			}
			else
			{
				MouseMove, X3, Y3, 2
				Click, X3 Y3
				Sleep 300
			}
		}
	}
	return

F2::
	Reload
	return