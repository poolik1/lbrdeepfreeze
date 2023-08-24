@echo off
set "shortcutPath=C:\Users\public_access\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Openwebsite.url"

if exist "%shortcutPath%" (
    del "%shortcutPath%"
    echo Shortcut deleted successfully.
) else (
    echo Shortcut not found.
)

pause
