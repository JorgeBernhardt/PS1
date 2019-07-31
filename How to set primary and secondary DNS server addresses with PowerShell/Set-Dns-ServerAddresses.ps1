# Set-Dns-ServerAddresses.ps1
# https://www.jorgebernhardt.com/how-to-set-dns-server-addresses-with-set-dnsclientserveraddress/
# wwww.jorgebernhardt.com

Get-NetAdapter | Select-Object InterfaceAlias , InterfaceIndex

Get-DnsClientServerAddress -InterfaceIndex 9

set-DnsClientServerAddress -InterfaceIndex 9 -ServerAddresses ("8.8.8.8","1.1.1.1")
