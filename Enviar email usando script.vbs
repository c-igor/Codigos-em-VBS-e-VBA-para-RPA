On Error Resume Next

	Dim objOutlook
	Dim objOutlookMsg
	Dim EnviarPara
	Dim CopiarPara
	Dim Assunto
	Dim Texto
	Dim Arquivo

	'Variável para envio de email
	EnviarPara = ""
	CopiarPara = ""
	Assunto = ""
	Texto = ""
	Arquivo = ""

	'Cria objeto Outlook
	Set objOutlook = CreateObject("Outlook.Application")
	Set objOutlookMsg = objOutlook.CreateItem(0)

		'Configura envio de e-mail 
		 With objOutlookMsg
			.To = EnviarPara
				If CopiarPara <> "" Then
					.Cc = CopiarPara
				End If
			.Subject = Assunto
			
			'.Bory = Texto
			.HTMLBody = Texto
			
			If Arquivo <> "" Then
			.Attachments.Add (Arquivo)
			End If
			
			.Send
		End With

	Set objOutlookMsg = Nothing
	Set objOutlook = Nothing

If Err.Number <> 0 Then
	Err.Clear
End If