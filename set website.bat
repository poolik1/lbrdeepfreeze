@echo off
set "URL=https://engage.redbridge.gov.uk/valentines-lido"
set "ShortcutName=Openwebsite.url"
set "UserAccount=public_access"
set "StartupFolder=C:\Users\%UserAccount%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

:: Create the shortcut file
echo [InternetShortcut] > "%StartupFolder%\%ShortcutName%"
echo URL=%URL% >> "%StartupFolder%\%ShortcutName%"
echo IconFile=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe >> "%StartupFolder%\%ShortcutName%"

:: Open the website using Microsoft Edge
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "%StartupFolder%\%ShortcutName%"
