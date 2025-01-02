dim d1,d2,i,A,B,valCol,lwb1,nomeArq
dim relatorio, comparativo

comparativo = WScript.Arguments.Item(0)
relatorio = WScript.Arguments.Item(1)
'comparativo = "C:\Users\fpdbradm\Documents\Automation Anywhere Files\Automation Anywhere\My Tasks\RPA_Caterpillar\COX002 - DDR\Output\Relatorio\Comparativo_DDR_junho_2020.xlsx"
'relatorio = "C:\Users\fpdbradm\Documents\Automation Anywhere Files\Automation Anywhere\My Tasks\RPA_Caterpillar\COX002 - DDR\Output\Relatorio\Rel - MERC - Historico DDR_24062020.xls"

'msgbox comparativo
'msgbox relatorio

const xlUp = -4162

Set objExcel1=CreateObject("Excel.Application")
Set objExcel2=CreateObject("Excel.Application")

objExcel1.Visible = True
objExcel2.Visible = True

objExcel1.DisplayAlerts = False

Set wb1 = objExcel1.Workbooks.open(relatorio)
Set wb2 = objExcel2.Workbooks.open(comparativo)

lwb1 = wb1.Sheets(1).range("A65000").End(xlUp).Row

i = 0

	Do
		i = i + 1
	Loop Until wb2.Sheets("Comparativo DDR").Cells(1, i).value = "Comparativo dia"

valCol = i

wb2.Sheets("Comparativo DDR").Columns(i).EntireColumn.insert

wb2.Sheets("Comparativo DDR").Cells(1, i).value = wb1.Sheets(1).range("A2").value

wb1.Sheets(1).range("D2:D" & lwb1).copy

wb2.Sheets("Comparativo DDR").Cells(2, i).PasteSpecial -4163

for D = 2 to lwb1
	objExcel2.StatusBar = "Processando " & D & " de " & lwb1
	
	A = wb2.Sheets("Comparativo DDR").Cells(D, i).Address
	B = wb2.Sheets("Comparativo DDR").Cells(D, i-1).Address

	A= replace(A, "$", "")
	B= replace(B, "$", "")
	
	wb2.Sheets("Comparativo DDR").Cells(D, i+1).FormulaLocal  = "=IF("& B &"=0;0;"& A &"/"& B &"-1)"
next 

objExcel2.StatusBar = ""


d1 = Month(cDate(wb2.Sheets("Comparativo DDR").Cells(1, valCol).value))
d2 = Month(cDate(wb2.Sheets("Comparativo DDR").Cells(1, valCol-1).value)) 

'nomeArq = "C:\Users\fpdbradm\Documents\Automation Anywhere Files\Automation Anywhere\My Tasks\RPA_Caterpillar\COX002 - DDR\Output\Relatorio\Comparativo_DDR_"&MonthName(Month(cdate(wb2.Sheets("Comparativo DDR").Cells(1, valCol).value)))&"_"&Year(cdate(wb2.Sheets("Comparativo DDR").Cells(1, valCol).value))&".xlsx"
nomeArq = WScript.Arguments.Item(2)&"\Comparativo_DDR_"&MonthName(Month(cdate(wb2.Sheets("Comparativo DDR").Cells(1, valCol).value)))&"_"&Year(cdate(wb2.Sheets("Comparativo DDR").Cells(1, valCol).value))&".xlsx"

if d1 > d2 then
	for a = 3 to i-2
		wb2.Sheets("Comparativo DDR").Columns(3).delete
	Next 
	
	wb2.SaveAs nomeArq 
else
	wb2.Save	
end if

wb2.Close

wb1.Close false

objExcel1.DisplayAlerts = true

objExcel1.Quit
objExcel2.Quit
