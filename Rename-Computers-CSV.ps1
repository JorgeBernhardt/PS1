# Rename-Computers-CSV.ps1
# v0.1
# wwww.jorgebernhardt.com

$File = 'c:\script\ComputerList.csv'
$Credential=Get-Credential


$computerList= Import-Csv   -Path $File `
                            -Delimiter "," `
                            -Header OldName,NewName

foreach ($Computer in $computerList)
{
Rename-Computer -ComputerName $Computer.OldName `
                -NewName $Computer.NewName `
                -LocalCredential $Credential `
                -Force `
                -Restart           
}


