# Rename-Computers-CSV.ps1
# https://www.jorgebernhardt.com/how-to-rename-computer-with-powershell/
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
                -DomainCredential $Credential `
                -Force `
                -Restart           
}


