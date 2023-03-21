# Shows the Menu
function Show-Menu {
    Clear-Host

    "---"
    Write-Host -ForegroundColor Yellow "Manager Menu"
    "---"
    ""
    "1 - Backups"
    $choice = Read-Host "Bitte waehlen" 
    if ($choice -eq 1) {
        Show-Backup
    } 
    else {
        "Placeholder"
    }
}

# Shows Backup Menu
function Show-Backup {
    Clear-Host
    "---"
    Write-Host -ForegroundColor Yellow "Backup Menu"
    "---"
    Write-Host -ForegroundColor Blue "Last Backup on $lastBackup"
    ""

}
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
