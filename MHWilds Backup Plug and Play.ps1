Set-ExecutionPolicy Unrestricted -Scope CurrentUser
$BackupLocationsFilePath=#Replace this text with your save folder's location, make sure the file path is in quotation marks.
$BackupLocations=Get-Item -Path $BackupLocationsFilePath
$StorageLocation=#Replace this text with the location you wish to save your data back up to, make sure the file path is in quotation marks.
$BackupName="Save Backup $(Get-Date -Format "dd-MM-yyy")"
foreach($Location in $BackupLocations){
    Write-Output "Backing up $($Location)"
    Get-ChildItem -Path $Location | Copy-Item -Destination "$StorageLocation\$BackupName" -Container -Recurse
}