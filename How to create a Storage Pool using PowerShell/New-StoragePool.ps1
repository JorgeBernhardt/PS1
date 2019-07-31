# New-StoragePool.ps1
# https://www.jorgebernhardt.com/how-to-create-a-storage-pool-using-powershell/
# wwww.jorgebernhardt.com

$disks = Get-PhysicalDisk -CanPool $true
New-StoragePool -FriendlyName StoragePool-01 `
                -StorageSubSystemFriendlyName "Storage Spaces on vDC01-N" `
                -PhysicalDisks $disks
