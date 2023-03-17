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
Get-UserFiles