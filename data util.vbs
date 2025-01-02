Dim s
Dim j
Dim D

    For x = 1 To 10
        j = x + 2 & "/" & Month(Now()) -1 & "/" & Year(Now())
        s = Weekday(j)           							
			
            If s = 1 then
				J = CDate(j)+1
                Exit For
            End If
			
			If s = 7 and x = 3 then
				J = CDate(j)+2
                Exit For
            End If
			
    Next
	
D = CDate(j)

'if Weekday(D) = 7 Then
'	D = D-2
'end if

MsgBox(CDate(J))
MsgBox(CDate(D))
