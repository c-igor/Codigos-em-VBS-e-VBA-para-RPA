
x = CStr("01/11/2023")
y = CStr("30/11/2023")

	Dia1 = CDate(Day(x)&"/"&Month(x)&"/"&Year(x))
	Dia2 = CDate(Day(y)&"/"&Month(y)&"/"&Year(y))
	
	NumData = DateDiff( "d", Dia1, Dia2)

MsgBox NumData