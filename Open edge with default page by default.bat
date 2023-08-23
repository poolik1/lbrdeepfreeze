@echo off
setlocal

:: Define the URL to be set as the startup page
set "startupURL=https://engage.redbridge.gov.uk/valentines-lido"

:: Set the registry key for Edge's startup page
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\NewTabPage" /v "DefaultPageURL" /d "%startupURL%" /f

:: Force a Group Policy update
gpupdate /force

echo GPO settings updated to open Edge with the specified URL on startup.

endlocal
