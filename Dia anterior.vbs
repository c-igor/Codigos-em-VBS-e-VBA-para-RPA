Dim s
Dim j
Dim Dia
'Dia = "10/05/2020"

Dia = cdate(WScript.Arguments.Item(0))
Dia = CDate(Day(Dia)&"/"&Month(Dia)&"/"&Year(Dia))

Dia = Dia - 1
   For x = 1 To 10
       s = Weekday(Dia)
           If s <> 1 And s <> 7 Then
               Exit For
else
Dia = Dia - 1
           End If
   Next

Dia = Day(Dia)&"/"&Month(Dia)&"/"&Year(Dia)
WScript.StdOut.Write(Dia)
'msgbox Dia