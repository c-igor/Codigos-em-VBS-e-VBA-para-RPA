Dim Dia
Dim s
Dim j
Dim D

D = Date
'D = "01/11/2020"
    For x = 1 To 10
        j = x & "/" & Month(D) & "/" & Year(D)
        s = Weekday(j)		
            If s <> 1 then
                Exit For
            End If			
    Next
	
D = CDate(j)

if Weekday(D) = 7 Then
	D = D+2
end if

'msgbox D

Dia = Date
'Dia = "03/05/2021"
Dia = Right("0" & Day(Dia), 2)&"/"&Right("0" & Month(Dia), 2)&"/"&Right("0" & Year(Dia), 4)

	If Day(Dia) = Day(D) Then
		Dia = Right("0" & Year(Dia), 4)&"-"&Right("0" & Month(Dia)-1, 2)&"-"&Right("0" & 1, 2)
	Else
		Dia = Right("0" & Year(Dia), 4)&"-"&Right("0" & Month(Dia), 2)&"-"&Right("0" & 1, 2)
	end if

'WScript.StdOut.Write(Dia)
msgbox Dia