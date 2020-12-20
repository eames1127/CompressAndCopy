[CmdletBinding()]
param (
    [Parameter(Mandatory)]
    [String] $fileName,
    [Parameter(Mandatory)]
    [string] $loc,
    [Parameter(Mandatory)]
    [string] $dest
)

$d = get-Date -Format "dd-M-yyyy"

$archive = $dest + '\' + $fileName + '_' + $d 

Get-ChildItem -Path $loc | Compress-Archive -DestinationPath $archive -CompressionLevel Optimal -Verbose -Confirm

Write-Host "Finished copying files to" $archive