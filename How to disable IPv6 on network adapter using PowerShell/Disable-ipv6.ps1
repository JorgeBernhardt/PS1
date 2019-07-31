# Disable-ipv6.ps1
# v0.1
# wwww.jorgebernhardt.com
Get-NetAdapter 

Get-NetAdapterBinding -Name Ethernet 

Get-NetAdapterBinding -Name Ethernet -ComponentID ms_tcpip6

Disable-NetAdapterBinding -Name Ethernet -ComponentID ms_tcpip6 

Get-NetAdapterBinding -Name Ethernet -ComponentID ms_tcpip6
