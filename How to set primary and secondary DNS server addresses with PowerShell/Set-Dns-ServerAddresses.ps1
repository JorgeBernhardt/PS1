# Set-Dns-ServerAddresses.ps1
# v0.1
# wwww.jorgebernhardt.com

Get-NetAdapter | Select-Object InterfaceAlias , InterfaceIndex

Get-DnsClientServerAddress -InterfaceIndex 9

set-DnsClientServerAddress -InterfaceIndex 9 -ServerAddresses ("8.8.8.8","1.1.1.1")
