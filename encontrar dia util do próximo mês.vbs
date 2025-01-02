Dim s
Dim j

    For x = 1 To 10
        j = x & "/" & Month(Now()) + 1 & "/" & Year(Now())
        s = Weekday(j)
            If s <> 1 And s <> 7 Then
                Exit For
            End If
    Next

MsgBox CDate(j) + 2