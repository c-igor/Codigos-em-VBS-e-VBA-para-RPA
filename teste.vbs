dim a
dim formulaprocv
Set obj = createobject("Excel.Application")
obj.visible=True 
Set obj1 = obj.Workbooks.open("C:\Users\carlos.igor\Desktop\teste.xlsx")
Set obj2 = obj.Workbooks.open("C:\Users\carlos.igor\Desktop\teste2.xlsx")

'numero de linhas
a = obj1.worksheets(1).Range("B65000").End(-4162).Row
b = obj2.worksheets(1).Range("A65000").End(-4162).Row

'formatação do texto
obj1.worksheets(1).range("A9").formulalocal = "=TEXTO(C9;""000000000000"")"

'copia e cola a formula
obj1.worksheets(1).range("A9").Copy
obj1.worksheets(1).range("A10:A" & a).PasteSpecial
formulaprocv = "=PROCV(A3;[teste.xlsx]Plan1!$A$9:$k$"
formulaprocv = formulaprocv & a
formulaprocv = formulaprocv & ";11;0)"
'procv
obj2.worksheets(1).range("D3").formulalocal = formulaprocv
'copia e cola a formula
obj2.worksheets(1).range("D3").Copy
obj2.worksheets(1).range("D4:D" & b).PasteSpecial