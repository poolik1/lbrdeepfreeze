@echo off

:: Set the start page for Microsoft Edge
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "https://engage.redbridge.gov.uk/valentines-lido" /f

:: Force Group Policy update
gpupdate /force

echo Group Policy settings updated for all users.

pause
