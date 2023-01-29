f1::
{
	Toggle := !Toggle
	return
}

f2::
{
	ExitApp
	return
}

~$LButton::
{
	KeyWait LButton, T0.1
    If ErrorLevel
	{
        While GetKeyState("LButton", "P") & (Toggle = 1) 
		{
            Click
        }
	}
	return
}

~$RButton::
{
	KeyWait LButton, T0.1
    If ErrorLevel
	{
        While GetKeyState("RButton", "P") & (Toggle = 1) 
		{
            Click, Right
        }
	}
	return
}