@echo off

set "targetURL=https://google.co.uk"

rem Open Edge with the specified URL
start msedge.exe %targetURL%

rem Create a scheduled task to run at logon
schtasks /Create /TN "OpenEdgeAtLogon" /SC ONLOGON /TR "msedge.exe %targetURL%" /F

echo Scheduled task created to open Edge at logon.