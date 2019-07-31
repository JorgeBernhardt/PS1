Get-NetAdapter 

Get-NetAdapterBinding -Name Ethernet 

Get-NetAdapterBinding -Name Ethernet -ComponentID ms_tcpip6

Disable-NetAdapterBinding -Name Ethernet -ComponentID ms_tcpip6 

Get-NetAdapterBinding -Name Ethernet -ComponentID ms_tcpip6
