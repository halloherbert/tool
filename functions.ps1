function Get-UserFiles {
    if ($env:userprofile) {
        Get-ChildItem "$env:userprofile"
    }
    else {
        Get-ChildItem "C:\users\hallo"
    }
}
Get-UserFiles