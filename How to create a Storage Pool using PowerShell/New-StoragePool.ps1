# Rename-Computers-CSV.ps1
# v0.1
# wwww.jorgebernhardt.com

$disks = Get-PhysicalDisk -CanPool $true
New-StoragePool -FriendlyName StoragePool-01 `
                -StorageSubSystemFriendlyName "Storage Spaces on vDC01-N" `
                -PhysicalDisks $disks
