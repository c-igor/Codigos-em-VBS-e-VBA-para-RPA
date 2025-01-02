Dim s
Dim j
Dim Dia
'Dia = "15/10/2020 15:58"
Dia = WScript.Arguments.Item(0)

Dia = Cdate(formatdatetime(Cdate(Dia)-Now(),4))

if Dia > "00:05:00" then
	Dia = 1
else
	Dia = 2
end if

WScript.StdOut.Write(Dia)

'msgbox Dia