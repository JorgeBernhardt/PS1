# Set-NetworkProfile.ps1
# https://www.jorgebernhardt.com/how-to-force-a-network-profile-in-windows-using-powershell/
# wwww.jorgebernhardt.com

Get-NetConnectionProfile

Set-NetConnectionProfile -InterfaceIndex 9 -NetworkCategory Private
