Dim Dia

Dia = "01/12/2021"
Dia = Right("0" & 1, 2)&"-"&Right("0" & Month(Dia)+1, 2)&"-"&Right("0" & Year(Dia), 4)
Dia = (cdate(Dia)-1)
Dia = Right("0" & Year(Dia), 4)&"-"&Right("0" & Month(Dia), 2)&"-"&Right("0" & Day(Dia), 2)

'WScript.StdOut.Write(Dia)
msgbox Dia