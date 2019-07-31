# Disable-ipv6.ps1
# https://www.jorgebernhardt.com/how-to-disable-ipv6-network-adapter-using-powershell/
# wwww.jorgebernhardt.com
Get-NetAdapter 

Get-NetAdapterBinding -Name Ethernet 

Get-NetAdapterBinding -Name Ethernet -ComponentID ms_tcpip6

Disable-NetAdapterBinding -Name Ethernet -ComponentID ms_tcpip6 

Get-NetAdapterBinding -Name Ethernet -ComponentID ms_tcpip6
