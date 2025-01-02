

Dia =  "14/04/2023"

Dia = CDate(Right("0" & Day(Dia), 2)&"-"&Right("0" & Month(Dia), 2)&"-"&Right("0" & Year(Dia), 4))

MsgBox Dia