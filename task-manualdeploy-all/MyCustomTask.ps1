[CmdletBinding()]
param()

Trace-VstsEnteringInvocation $MyInvocation
try {
    # Get task variables.
    [bool] $debug = Get-VstsTaskVariable -Name System.Debug -AsBool

    # Get the inputs.
    [string] $RAPVersion = Get-VstsInput -Name RAPVersion
    [int] $Ring = Get-VstsInput -Name Ring
    [string] $PodName = Get-VstsInput -Name PodName
    [string] $TenantIDs = Get-VstsInput -Name TenantIDs
    [string] $ServiceDeskCRId = Get-VstsInput -Name ServiceDeskCRId
    [bool] $ExecuteRollback = Get-VstsInput -Name ExecuteRollback -AsBool

    Write-Host "Debug: $debug"
    Write-Host "Deploying $RAPVersion to $Ring!"
    Write-Host "PodName: $PodName"
    Write-Host "TenantIDs: $TenantIDs"
    Write-Host "ServiceDeskCRId: $ServiceDeskCRId"
    Write-Host "ExecuteRollback: $ExecuteRollback"

} finally {
    Trace-VstsLeavingInvocation $MyInvocation
}