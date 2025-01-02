Dim Dia
Dim AnoAtual
Dim UltimoDiaProgramacaoExcel
Dim Resultado

Dia = WScript.Arguments.Item(0)
UltimoDiaProgramacaoExcel = WScript.Arguments.Item(1)

AnoAtual = Right("0" & Year(Now), 4)
Dia = Dia&"/"&Right("0" & Year(Now), 4)

Dia = Right("0" & 1, 2)&"-"&Right("0" & Month(Dia)+1, 2)&"-"&Right("0" & Year(Dia), 4)
Dia = (cdate(Dia)-1)
Dia = Right("0" & Day(Dia), 2)

	if UltimoDiaProgramacaoExcel > Dia Then
		Resultado = "cancelar"
	Else
		Resultado = "continuar"
	end if	

msgbox Resultado

'WScript.StdOut.Write(Dia)