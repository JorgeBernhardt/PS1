# New-SharedFolder.ps1
# https://www.jorgebernhardt.com/how-to-create-a-shared-folder-using-powershell/
# wwww.jorgebernhardt.com

New-Item 'c:\Parent-Directory\Sub-Directory' -ItemType Directory

New-SMBShare –Name SharedFolder `
             –Path C:\Parent-Directory `
             –FullAccess Administrators `
             -ChangeAccess 'Server Operators' `
             -ReadAccess Users
