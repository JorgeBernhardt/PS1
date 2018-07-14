
# Add-Computers-TXT.ps1
# v0.1
# wwww.jorgebernhardt.com

$File = 'c:\script\ComputerList.csv'
$OldDomainCredential=Get-Credential
$NewDomainCredential=Get-Credential
$NewDomain=


$computerList= Get-Content $File


Add-Computer -ComputerName $computerList 
             -Domain $NewDomain
             -LocalCredential Domain01\User01 
             -UnjoinDomainCredential $OldDomainCredential 
             -Credential $NewDomainCredential
             -Restart