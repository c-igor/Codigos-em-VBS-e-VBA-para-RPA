Dim s
Dim j
Dim Dia

Dia = cdate(Now)
Dia = CDate(Day(Dia)&"/"&Month(Dia)&"/"&Year(Dia))+int(WScript.Arguments.Item(1))

    For x = 1 To 10
        s = Weekday(Dia)
            If s <> 1 And s <> 7 Then
                Exit For
			else
				Dia = Dia + 1
            End If
    Next

WScript.StdOut.Write(Dia)
