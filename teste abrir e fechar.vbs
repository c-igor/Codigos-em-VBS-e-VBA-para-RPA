Set obj = createobject("Excel.Application")
obj.visible=True 
Set obj1 = obj.Workbooks.open("C:\Users\carlos.igor\Desktop\teste.xlsx")

obj1.worksheets(1).range("E1").value = "aaa"

obj1.Save
obj1.Close

obj.Quit