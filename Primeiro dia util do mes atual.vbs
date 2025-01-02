Dim s
Dim j
Dim D

    For x = 1 To 10
        j = x & "/" & Month(Now()) & "/" & Year(Now())
        s = Weekday(j)
		
            If s <> 1 then
                Exit For
            End If
			
    Next
	
D = CDate(j)

if Weekday(D) = 7 Then
	D = D-1
end if

WScript.StdOut.Write(D)
'msgbox D