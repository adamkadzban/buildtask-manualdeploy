[CmdletBinding()]
param()

Trace-VstsEnteringInvocation $MyInvocation
try {
    # Get task variables.
    [bool] $debug = Get-VstsTaskVariable -Name System.Debug -AsBool

    # Get the inputs.
    [string] $RAPVersion = Get-VstsInput -Name RAPVersion
    [int] $Ring = Get-VstsInput -Name Ring
    [string] $ServiceDeskCRId = Get-VstsInput -Name ServiceDeskCRId

    Write-Host "Debug: $debug"
    Write-Host "Deploying $RAPVersion to $Ring!"
    Write-Host "ServiceDeskCRId: $ServiceDeskCRId"

} finally {
    Trace-VstsLeavingInvocation $MyInvocation
}