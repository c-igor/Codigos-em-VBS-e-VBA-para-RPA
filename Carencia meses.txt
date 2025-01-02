Dim s
Dim j
Dim Dia
'Dia = "17/05/2020"
'Carencia = 4

Carencia = (WScript.Arguments.Item(1))
Carencia = Carencia + 1
Dia = cdate(WScript.Arguments.Item(0))
Dia = CDate(Day(Dia)&"/"&Month(Dia)+Carencia&"/"&Year(Dia))

   
	For x = 1 To 10
       s = Weekday(Dia)
           If s <> 1 And s <> 7 Then
               Exit For
else
Dia = Dia - 1
           End If
   Next

WScript.StdOut.Write(Dia)
'msgbox Dia