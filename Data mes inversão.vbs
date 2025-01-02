Dim Dia
'Dia = "5/1/2020"

Dia = cdate(WScript.Arguments.Item(0))

'msgbox Dia

Dia = Right("0" & Day(Dia), 2)&"/"&Right("0" & Month(Dia), 2)&"/"&Right("0" & Year(Dia), 4)

WScript.StdOut.Write(Dia)
'msgbox Dia