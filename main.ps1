. ".\variables.ps1"
. ".\functions.ps1"

Get-ChildItem | Unblock-File | Out-Null
Set-PSDebug -Off

Show-Menu