@echo off
echo Setting default browser to Microsoft Edge...

:: Set default browser to Microsoft Edge
reg add HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice /v ProgId /d "AppXq0fevzme2pys62n3e0fbqa7peapykr8v" /f
reg add HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice /v ProgId /d "AppXq0fevzme2pys62n3e0fbqa7peapykr8v" /f

echo Default browser set to Microsoft Edge.
pause
