Dim Dia
'Dia = "5/1/2020"

'Dia = cdate(WScript.Arguments.Item(0))
Dia = Date
Dia = Right("0" & Month(Dia), 2)

WScript.StdOut.Write(Dia)
'msgbox Dia