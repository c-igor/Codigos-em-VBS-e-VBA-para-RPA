Dim s
Dim j
Dim Dia

Dia = cdate(WScript.Arguments.Item(0))

Dia = CDate(Month(Dia)&"/"&Day(Dia)&"/"&Year(Dia))

WScript.StdOut.Write(Dia)
