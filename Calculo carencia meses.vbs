Dim s
Dim j
Dim x
Dim Dia, Comp
'Dia = "14/09/2020"
'Carencia = 0

Carencia = (WScript.Arguments.Item(1))

Carencia = (Carencia + 1)
Dia = CDate(WScript.Arguments.Item(0))

Comp = Dia

Dia = DateAdd("m",Carencia,Dia)

Dia = Right("0" & Day(Dia), 2)&"/"&Right("0" & Month(Dia), 2)&"/"&Right("0" & Year(Dia), 4)

if left (Dia, 2) <> left (Comp, 2) then
	Dia = DateAdd("d",1,Dia)
End If

WScript.StdOut.Write(Dia)
'msgbox Dia