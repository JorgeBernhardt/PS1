

New-Item 'c:\Parent-Directory\Sub-Directory' -ItemType Directory

New-SMBShare –Name SharedFolder `
             –Path C:\Parent-Directory `
             –FullAccess Administrators `
             -ChangeAccess 'Server Operators' `
             -ReadAccess Users
