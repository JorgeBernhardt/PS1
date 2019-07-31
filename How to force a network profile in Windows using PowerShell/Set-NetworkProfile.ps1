# Set-NetworkProfile.ps1
# v0.1
# wwww.jorgebernhardt.com

Get-NetConnectionProfile

Set-NetConnectionProfile -InterfaceIndex 9 -NetworkCategory Private
