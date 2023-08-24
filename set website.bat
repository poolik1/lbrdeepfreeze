@echo off
set "URL=https://engage.redbridge.gov.uk/valentines-lido"
set "ShortcutName=Openwebsite.url"
set "UserAccount=public_access"
set "StartupFolder=C:\Users\%UserAccount%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

:: Create the shortcut file
echo [InternetShortcut] > "%StartupFolder%\%ShortcutName%"
echo URL=%URL% >> "%StartupFolder%\%ShortcutName%"
echo IconIndex=0 >> "%StartupFolder%\%ShortcutName%"
echo IconFile=msedge.exe >> "%StartupFolder%\%ShortcutName%"

:: Open the website
start "" "msedge.exe" "%StartupFolder%\%ShortcutName%"
