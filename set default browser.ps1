# Check for administrative privileges
$isAdmin = ([System.Security.Principal.WindowsPrincipal] [System.Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([System.Security.Principal.WindowsBuiltInRole] "Administrator")

if (-not $isAdmin) {
    Write-Host "This script requires administrative privileges. Please run the script as an administrator."
    exit
}

# Set Microsoft Edge as the default browser
$edgeProtocol = "microsoft-edge:"
$browserPath = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe").Path

# Set default browser for current user
$edgeDefaultApp = New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice" -Name "ProgId" -Value $edgeProtocol -Force
$edgeDefaultApp = New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice" -Name "ProgId" -Value $edgeProtocol -Force

# Set default browser for all users
$edgeDefaultApp = New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice" -Name "ProgId" -Value $edgeProtocol -Force
$edgeDefaultApp = New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice" -Name "ProgId" -Value $edgeProtocol -Force

# Associate Microsoft Edge with HTML file types
$edgeHtmlFile = New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice" -Name "Hash" -Value ([System.BitConverter]::ToString((Get-Hash "htmlfile").Hash)) -Force

# Set the browser path for Microsoft Edge
$edgeBrowserPath = New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice" -Name "ApplicationPath" -Value $browserPath -Force
$edgeBrowserPath = New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice" -Name "ApplicationPath" -Value $browserPath -Force

$edgeBrowserPath = New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice" -Name "ApplicationPath" -Value $browserPath -Force
$edgeBrowserPath = New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice" -Name "ApplicationPath" -Value $browserPath -Force

Write-Host "Microsoft Edge has been set as the default browser for all users."
