Set objShell = CreateObject("WScript.Shell") 
chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"
url = "https://www.google.com"
objShell.Run """" & chromePath & """ --new-window """ & url & """", 1, False
WScript.Sleep 150
Set objShell = Nothing