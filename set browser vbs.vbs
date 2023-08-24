' VBScript to set Microsoft Edge as the default browser on the local machine
Set objShell = CreateObject("WScript.Shell")

' Set the registry keys to change the default browser to Microsoft Edge
objShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice\Progid", "MSEdgeHTML", "REG_SZ"
objShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice\Progid", "MSEdgeHTML", "REG_SZ"
objShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\ftp\UserChoice\Progid", "MSEdgeHTML", "REG_SZ"

' Notify the user that the default browser has been changed
MsgBox "Default browser set to Microsoft Edge on the local machine."

Set objShell = Nothing
