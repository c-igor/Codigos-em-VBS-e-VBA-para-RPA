Dim Dia

Dia = Date
Dia = Right("0" & Year(Dia), 4)&"-"&Right("0" & Month(Dia), 2)&"-"&Right("0" & 1, 2)

WScript.StdOut.Write(Dia)
'msgbox Dia