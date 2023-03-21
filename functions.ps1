# Shows the Menu Text
function Show-Menu {
    param(
        $menuType = "Manager"
    )
    Clear-Host
    "---"
    Write-Host -ForegroundColor Yellow "$menuType Menu"
    "---"
    ""
    if ($menuType -eq "Manager") {
        Show-Manager
    }
    if ($menuType -eq "Backup") {
        Show-Backup
    }
}

#Shows Manager for Choices
function Show-Manager {
        "1 - Backups"
        $choice = Read-Host "Bitte waehlen"
        if ($choice -eq 1) {
            Show-Menu -menuType "Backup"
        }
}

#Backup Menu
function Show-Backup {
    Write-Host -ForegroundColor Blue "Last Backup on $lastBackup"
    "---"
    "1 - Backup Ziel festlegen"
    "2 - Backup jetzt erstellen"
    $choice = Read-Host "Bitte waehlen"
        if ($choice -eq 1) {
            pause
        }
    pause
}

# Gets User Folder and all Files in it
function Get-UserFiles {
    if ($env:userprofile) {
        Get-ChildItem "$env:userprofile"
    }
    else {
        $user = Read-Host "Enter your Username"
        try {
            Get-ChildItem "C:\users\$user"
        }
        catch {
            Write-Host -ForegroundColor Red "!Fehler!"
        }
    }
}
